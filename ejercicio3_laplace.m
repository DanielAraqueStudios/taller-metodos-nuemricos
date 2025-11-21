% =========================================================================
% EJERCICIO 3 y 4: ECUACIÓN DE LAPLACE EN PLACA RECTANGULAR
% Visualización de la distribución de temperatura en estado estacionario
% =========================================================================

clear all; close all; clc;

% Parámetros del problema
a = 1;               % Ancho de la placa (normalizado)
b = 1;               % Alto de la placa (normalizado)
N_terms = 30;        % Número de términos en la serie

%% CASO 1: Condición no homogénea en y=b (Ejercicio 3)
% f(x) = sin(pi*x/a) como ejemplo

% Función para calcular coeficientes B_n (Ejercicio 3)
function B = calcular_B_n_caso1(n, a, b, f_func)
    x_int = linspace(0, a, 200);
    integrand = f_func(x_int) .* sin(n*pi*x_int/a);
    integral_val = trapz(x_int, integrand);
    B = (2/(a*sinh(n*pi*b/a))) * integral_val;
end

% Función de frontera ejemplo para Ejercicio 3
f_caso1 = @(x) 100*sin(pi*x/a);

% Calcular solución u(x,y) para Caso 1
x_grid = linspace(0, a, 100);
y_grid = linspace(0, b, 100);
[X1, Y1] = meshgrid(x_grid, y_grid);
U1 = zeros(size(X1));

for i = 1:size(X1, 1)
    for j = 1:size(X1, 2)
        x_val = X1(i,j);
        y_val = Y1(i,j);
        u_sum = 0;
        for n = 1:N_terms
            B_n = calcular_B_n_caso1(n, a, b, f_caso1);
            u_sum = u_sum + B_n * sinh(n*pi*y_val/a) * sin(n*pi*x_val/a);
        end
        U1(i,j) = u_sum;
    end
end

%% FIGURA ÚNICA EJERCICIO 3: Panel de visualizaciones
figure('Position', [100, 100, 1600, 800]);

% (a) Superficie 3D
subplot(2,3,1);
surf(X1, Y1, U1, 'EdgeColor', 'none');
colormap('hot');
colorbar;
xlabel('x/a', 'FontSize', 10);
ylabel('y/b', 'FontSize', 10);
zlabel('u(x,y)', 'FontSize', 10);
title('(a) Superficie 3D: u(x,y)', 'FontSize', 11);
view([-30, 30]);
shading interp;

% (b) Mapa de contorno
subplot(2,3,2);
contourf(X1, Y1, U1, 25);
colormap('hot');
colorbar;
hold on;
contour(X1, Y1, U1, 10, 'k-', 'LineWidth', 0.5);
xlabel('x/a', 'FontSize', 10);
ylabel('y/b', 'FontSize', 10);
title('(b) Isotermas', 'FontSize', 11);
axis equal;
xlim([0 a]);
ylim([0 b]);

% (c) Perfiles a diferentes alturas
subplot(2,3,3);
y_perfiles = [0.2, 0.4, 0.6, 0.8, 1.0];
colores = {'b', 'r', 'g', 'm', 'c'};
x_perfil = linspace(0, a, 200);
for k = 1:length(y_perfiles)
    y_val = y_perfiles(k) * b;
    u_perfil = zeros(size(x_perfil));
    for i = 1:length(x_perfil)
        for n = 1:N_terms
            B_n = calcular_B_n_caso1(n, a, b, f_caso1);
            u_perfil(i) = u_perfil(i) + B_n * sinh(n*pi*y_val/a) * sin(n*pi*x_perfil(i)/a);
        end
    end
    plot(x_perfil, u_perfil, colores{k}, 'LineWidth', 1.5, ...
         'DisplayName', sprintf('y/b=%.1f', y_perfiles(k)));
    hold on;
end
grid on;
xlabel('x/a', 'FontSize', 10);
ylabel('u(x,y)', 'FontSize', 10);
title('(c) Perfiles de Temperatura', 'FontSize', 11);
legend('Location', 'north', 'FontSize', 8);

% (d) Gradiente de temperatura
subplot(2,3,4);
[Ux, Uy] = gradient(U1, a/100, b/100);
skip = 5;
quiver(X1(1:skip:end,1:skip:end), Y1(1:skip:end,1:skip:end), ...
       Ux(1:skip:end,1:skip:end), Uy(1:skip:end,1:skip:end), 2, 'b');
hold on;
contour(X1, Y1, U1, 15, 'k-', 'LineWidth', 0.5);
xlabel('x/a', 'FontSize', 10);
ylabel('y/b', 'FontSize', 10);
title('(d) Campo de Gradientes ∇u', 'FontSize', 11);
axis equal;
xlim([0 a]);
ylim([0 b]);
colorbar;

% (e) Convergencia de la serie
subplot(2,3,5);
x_test = a/2;
y_test = b/2;
N_max = 50;
u_conv = zeros(1, N_max);
for N = 1:N_max
    u_sum = 0;
    for n = 1:N
        B_n = calcular_B_n_caso1(n, a, b, f_caso1);
        u_sum = u_sum + B_n * sinh(n*pi*y_test/a) * sin(n*pi*x_test/a);
    end
    u_conv(N) = u_sum;
end
plot(1:N_max, u_conv, 'b-o', 'LineWidth', 1.5, 'MarkerSize', 3);
grid on;
xlabel('Número de términos N', 'FontSize', 10);
ylabel('u(a/2, b/2)', 'FontSize', 10);
title('(e) Convergencia en Centro', 'FontSize', 11);

% (f) Vista superior (contorno 3D)
subplot(2,3,6);
surf(X1, Y1, U1, 'EdgeColor', 'none');
colormap('hot');
colorbar;
xlabel('x/a', 'FontSize', 10);
ylabel('y/b', 'FontSize', 10);
zlabel('u(x,y)', 'FontSize', 10);
title('(f) Vista Superior 3D', 'FontSize', 11);
view([0, 90]);
shading interp;

sgtitle('Ejercicio 3: Ecuación de Laplace (condición en y=b)', 'FontSize', 14, 'FontWeight', 'bold');
saveas(gcf, 'ejercicio3_laplace.png');

%% CASO 2: Condición no homogénea en y=0 (Ejercicio 4)
% f(x) = sin(pi*x/a) como ejemplo

% Función para calcular coeficientes B_n (Ejercicio 4)
function B = calcular_B_n_caso2(n, a, b, f_func)
    x_int = linspace(0, a, 200);
    integrand = f_func(x_int) .* sin(n*pi*x_int/a);
    integral_val = trapz(x_int, integrand);
    B = (2/(a*sinh(n*pi*b/a))) * integral_val;
end

% Función de frontera ejemplo para Ejercicio 4
f_caso2 = @(x) 100*sin(pi*x/a);

% Calcular solución u(x,y) para Caso 2
U2 = zeros(size(X1));

for i = 1:size(X1, 1)
    for j = 1:size(X1, 2)
        x_val = X1(i,j);
        y_val = Y1(i,j);
        u_sum = 0;
        for n = 1:N_terms
            B_n = calcular_B_n_caso2(n, a, b, f_caso2);
            u_sum = u_sum + B_n * sinh(n*pi*(b-y_val)/a) * sin(n*pi*x_val/a);
        end
        U2(i,j) = u_sum;
    end
end

%% FIGURA ÚNICA EJERCICIO 4: Panel de visualizaciones
figure('Position', [100, 100, 1600, 800]);

% (a) Superficie 3D - Caso 2
subplot(2,3,1);
surf(X1, Y1, U2, 'EdgeColor', 'none');
colormap('hot');
colorbar;
xlabel('x/a', 'FontSize', 10);
ylabel('y/b', 'FontSize', 10);
zlabel('u(x,y)', 'FontSize', 10);
title('(a) Superficie 3D: u(x,y)', 'FontSize', 11);
view([-30, 30]);
shading interp;

% (b) Mapa de contorno - Caso 2
subplot(2,3,2);
contourf(X1, Y1, U2, 25);
colormap('hot');
colorbar;
hold on;
contour(X1, Y1, U2, 10, 'k-', 'LineWidth', 0.5);
xlabel('x/a', 'FontSize', 10);
ylabel('y/b', 'FontSize', 10);
title('(b) Isotermas', 'FontSize', 11);
axis equal;
xlim([0 a]);
ylim([0 b]);

% (c) Comparación Caso 1 vs Caso 2
subplot(2,3,3);
plot(x_perfil, U1(50,:), 'b-', 'LineWidth', 1.5, 'DisplayName', 'Caso 1 (y=b)');
hold on;
plot(x_perfil, U2(50,:), 'r--', 'LineWidth', 1.5, 'DisplayName', 'Caso 2 (y=0)');
grid on;
xlabel('x/a', 'FontSize', 10);
ylabel('u(x,y)', 'FontSize', 10);
title('(c) Comparación Casos 1 y 2', 'FontSize', 11);
legend('FontSize', 8);

% (d) Contorno Caso 1 (referencia)
subplot(2,3,4);
contourf(X1, Y1, U1, 25);
colormap('hot');
colorbar;
xlabel('x/a', 'FontSize', 10);
ylabel('y/b', 'FontSize', 10);
title('(d) Caso 1: f(x) en y=b', 'FontSize', 11);
axis equal;
xlim([0 a]);
ylim([0 b]);

% (e) Contorno Caso 2
subplot(2,3,5);
contourf(X1, Y1, U2, 25);
colormap('hot');
colorbar;
xlabel('x/a', 'FontSize', 10);
ylabel('y/b', 'FontSize', 10);
title('(e) Caso 2: f(x) en y=0', 'FontSize', 11);
axis equal;
xlim([0 a]);
ylim([0 b]);

% (f) Vista superior 3D - Caso 2
subplot(2,3,6);
surf(X1, Y1, U2, 'EdgeColor', 'none');
colormap('hot');
colorbar;
xlabel('x/a', 'FontSize', 10);
ylabel('y/b', 'FontSize', 10);
zlabel('u(x,y)', 'FontSize', 10);
title('(f) Vista Superior 3D', 'FontSize', 11);
view([0, 90]);
shading interp;

sgtitle('Ejercicio 4: Ecuación de Laplace (condición en y=0) + Comparación', 'FontSize', 14, 'FontWeight', 'bold');
saveas(gcf, 'ejercicio4_laplace.png');

fprintf('✓ Figuras de los Ejercicios 3 y 4 generadas exitosamente:\n');
fprintf('  - ejercicio3_laplace.png (6 paneles)\n');
fprintf('  - ejercicio4_laplace.png (6 paneles)\n');
