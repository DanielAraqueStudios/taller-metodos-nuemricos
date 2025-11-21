% =========================================================================
% EJERCICIO 1: ECUACIÓN DE CALOR UNIDIMENSIONAL
% Visualización de la distribución de temperatura en una barra
% =========================================================================

clear all; close all; clc;

% Parámetros del problema
L = 100;              % Longitud de la barra
k = 1.6352;          % Coeficiente de difusividad térmica
N_terms = 5;         % Número de términos en la serie (n=1,3,5,7,9)
x = linspace(0, L, 200);  % Puntos espaciales
t_vals = [0, 10, 50, 100, 200];  % Tiempos para graficar

% Función para calcular los coeficientes B_n
B_n = @(n) (320 / (n^2 * pi^2)) * (-1)^((n-1)/2);

% Función para calcular u(x,t)
function u = calcular_u(x, t, L, k, N_terms, B_n)
    u = zeros(size(x));
    n_values = 1:2:2*N_terms;  % n = 1, 3, 5, 7, 9
    for n = n_values
        u = u + B_n(n) * sin(n*pi*x/L) .* exp(-k*(n*pi/L)^2*t);
    end
end

%% FIGURA ÚNICA: Panel con todas las visualizaciones
figure('Position', [100, 100, 1600, 1200]);

% Preparar datos
f_inicial = zeros(size(x));
for i = 1:length(x)
    if x(i) <= 50
        f_inicial(i) = 0.8 * x(i);
    else
        f_inicial(i) = 0.8 * (100 - x(i));
    end
end

x_grid = linspace(0, L, 100);
t_grid = linspace(0, 200, 100);
[X, T] = meshgrid(x_grid, t_grid);
U = zeros(size(X));

for i = 1:size(X, 1)
    for j = 1:size(X, 2)
        U(i,j) = calcular_u(X(i,j), T(i,j), L, k, N_terms, B_n);
    end
end

% Subplot 1: Condición inicial
subplot(2, 3, 1);
plot(x, f_inicial, 'b-', 'LineWidth', 2);
hold on;
u_0 = calcular_u(x, 0, L, k, N_terms, B_n);
plot(x, u_0, 'r--', 'LineWidth', 1.5);
grid on;
xlabel('x (posición)', 'FontSize', 10);
ylabel('u(x,0)', 'FontSize', 10);
title('(a) Condición Inicial', 'FontSize', 11, 'FontWeight', 'bold');
legend('f(x) exacta', 'S_5(x,0)', 'Location', 'north', 'FontSize', 9);

% Subplot 2: Evolución temporal
subplot(2, 3, 2);
colores = {'b', 'r', 'g', 'm', 'c'};
for i = 1:length(t_vals)
    t = t_vals(i);
    u_t = calcular_u(x, t, L, k, N_terms, B_n);
    plot(x, u_t, colores{i}, 'LineWidth', 1.5, 'DisplayName', sprintf('t=%d', t_vals(i)));
    hold on;
end
grid on;
xlabel('x (posición)', 'FontSize', 10);
ylabel('u(x,t)', 'FontSize', 10);
title('(b) Evolución Temporal', 'FontSize', 11, 'FontWeight', 'bold');
legend('Location', 'northeast', 'FontSize', 8);

% Subplot 3: Convergencia
subplot(2, 3, 3);
x_test = 50;
N_max = 50;
error_vals = zeros(1, N_max);
valor_exacto = 40;
for N = 1:N_max
    n_vals = 1:2:(2*N);
    u_aprox = 0;
    for n = n_vals
        u_aprox = u_aprox + B_n(n) * sin(n*pi*x_test/L);
    end
    error_vals(N) = abs(valor_exacto - u_aprox);
end
semilogy(1:N_max, error_vals, 'b-o', 'LineWidth', 1.5, 'MarkerSize', 3);
grid on;
xlabel('Términos N', 'FontSize', 10);
ylabel('Error |f(50)-S_N(50,0)|', 'FontSize', 10);
title('(c) Convergencia en x=50', 'FontSize', 11, 'FontWeight', 'bold');

% Subplot 4: Superficie 3D
subplot(2, 3, 4);
surf(X, T, U, 'EdgeColor', 'none');
colormap('jet');
colorbar;
xlabel('x', 'FontSize', 10);
ylabel('t', 'FontSize', 10);
zlabel('u(x,t)', 'FontSize', 10);
title('(d) Solución 3D', 'FontSize', 11, 'FontWeight', 'bold');
view([-30, 30]);
shading interp;

% Subplot 5: Mapa de contorno
subplot(2, 3, 5);
contourf(X, T, U, 20);
colormap('jet');
colorbar;
xlabel('x (posición)', 'FontSize', 10);
ylabel('t (tiempo)', 'FontSize', 10);
title('(e) Mapa de Contorno', 'FontSize', 11, 'FontWeight', 'bold');

% Subplot 6: Vista superior 3D
subplot(2, 3, 6);
surf(X, T, U, 'EdgeColor', 'none');
colormap('jet');
colorbar;
xlabel('x', 'FontSize', 10);
ylabel('t', 'FontSize', 10);
zlabel('u(x,t)', 'FontSize', 10);
title('(f) Vista Alternativa', 'FontSize', 11, 'FontWeight', 'bold');
view([0, 90]);
shading interp;

% Título general
sgtitle('Ejercicio 1: Ecuación de Calor Unidimensional', 'FontSize', 14, 'FontWeight', 'bold');

% Guardar figura
saveas(gcf, 'ejercicio1_calor.png');

fprintf('✓ Figura del Ejercicio 1 generada exitosamente.\n');
fprintf('  - ejercicio1_calor.png\n');
