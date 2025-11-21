% =========================================================================
% EJERCICIO 2: ECUACIÓN DE ONDA - CUERDA VIBRANTE
% Visualización de la vibración de una cuerda con perfil zigzag
% =========================================================================

clear all; close all; clc;

% Parámetros del problema
L = 1;               % Longitud de la cuerda (normalizada)
h = 1;               % Altura del zigzag
c = 1;               % Velocidad de propagación (normalizada)
N_terms = 10;        % Número de términos en la serie

% Función para el desplazamiento inicial f(x)
function f = f_inicial(x, L, h)
    f = zeros(size(x));
    for i = 1:length(x)
        if x(i) <= L/3
            f(i) = (3*h/L) * x(i);
        elseif x(i) <= 2*L/3
            f(i) = h - (6*h/L) * (x(i) - L/3);
        else
            f(i) = -h + (3*h/L) * (x(i) - 2*L/3);
        end
    end
end

% Función para calcular coeficientes A_n
function A = calcular_A_n(n, L, h)
    A = (18*h/(n^2*pi^2)) * (sin(n*pi/3) - sin(2*n*pi/3));
end

% Función para calcular u(x,t)
function u = calcular_u_onda(x, t, L, c, N_terms, h)
    u = zeros(size(x));
    for n = 1:N_terms
        A_n = calcular_A_n(n, L, h);
        if abs(A_n) > 1e-10  % Solo términos significativos
            u = u + A_n * cos(n*pi*c*t/L) .* sin(n*pi*x/L);
        end
    end
end

%% FIGURA ÚNICA: Panel con todas las visualizaciones
figure('Position', [100, 100, 1600, 1000]);
% Preparar datos
x = linspace(0, L, 300);
f = f_inicial(x, L, h);
T_periodo = 2*L/c;
t_vals = [0, T_periodo/8, T_periodo/4, 3*T_periodo/8, T_periodo/2];

x_grid = linspace(0, L, 100);
t_grid = linspace(0, 2*T_periodo, 150);
[X, T] = meshgrid(x_grid, t_grid);
U = zeros(size(X));

for i = 1:size(X, 1)
    for j = 1:size(X, 2)
        U(i,j) = calcular_u_onda(X(i,j), T(i,j), L, c, N_terms, h);
    end
end

% Subplot 1: Perfil inicial
subplot(2, 3, 1);
plot(x, f, 'b-', 'LineWidth', 2);
hold on;
plot([0, L/3, 2*L/3, L], [0, h, -h, 0], 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
grid on;
xlabel('x/L', 'FontSize', 10);
ylabel('f(x)', 'FontSize', 10);
title('(a) Condición Inicial Zigzag', 'FontSize', 11, 'FontWeight', 'bold');
ylim([-1.2*h, 1.2*h]);

% Subplot 2: Snapshots temporales
subplot(2, 3, 2);
colores = {'b', 'r', 'g', 'm', 'c'};
for i = 1:length(t_vals)
    t = t_vals(i);
    u_t = calcular_u_onda(x, t, L, c, N_terms, h);
    plot(x, u_t, colores{i}, 'LineWidth', 1.5, 'DisplayName', sprintf('t=%.2fT', t/T_periodo));
    hold on;
end
grid on;
xlabel('x/L', 'FontSize', 10);
ylabel('u(x,t)', 'FontSize', 10);
title('(b) Evolución Temporal', 'FontSize', 11, 'FontWeight', 'bold');
legend('Location', 'northeast', 'FontSize', 8);
ylim([-1.2*h, 1.2*h]);

% Subplot 3: Espectro de frecuencias
subplot(2, 3, 3);
n_vals = 1:20;
A_vals = zeros(size(n_vals));
for i = 1:length(n_vals)
    A_vals(i) = calcular_A_n(n_vals(i), L, h);
end
stem(n_vals, abs(A_vals), 'b', 'LineWidth', 1.5, 'MarkerSize', 6);
grid on;
xlabel('Modo n', 'FontSize', 10);
ylabel('|A_n|', 'FontSize', 10);
title('(c) Espectro Modal', 'FontSize', 11, 'FontWeight', 'bold');

% Subplot 4: Superficie 3D
subplot(2, 3, 4);
surf(X, T/T_periodo, U, 'EdgeColor', 'none');
colormap('jet');
colorbar;
xlabel('x/L', 'FontSize', 10);
ylabel('t/T', 'FontSize', 10);
zlabel('u(x,t)', 'FontSize', 10);
title('(d) Solución 3D', 'FontSize', 11, 'FontWeight', 'bold');
view([-30, 30]);
shading interp;

% Subplot 5: Vista superior
subplot(2, 3, 5);
contourf(X, T/T_periodo, U, 20);
colormap('jet');
colorbar;
xlabel('x/L', 'FontSize', 10);
ylabel('t/T', 'FontSize', 10);
title('(e) Mapa de Contorno', 'FontSize', 11, 'FontWeight', 'bold');

% Subplot 6: Energía
subplot(2, 3, 6);
t_energia = linspace(0, 4*T_periodo, 200);
energia = zeros(size(t_energia));
for i = 1:length(t_energia)
    u_vals = calcular_u_onda(x, t_energia(i), L, c, N_terms, h);
    energia(i) = trapz(x, u_vals.^2);
end
plot(t_energia/T_periodo, energia, 'b-', 'LineWidth', 1.5);
grid on;
xlabel('t/T', 'FontSize', 10);
ylabel('Energía', 'FontSize', 10);
title('(f) Conservación de Energía', 'FontSize', 11, 'FontWeight', 'bold');

% Título general
sgtitle('Ejercicio 2: Ecuación de Onda - Cuerda Vibrante', 'FontSize', 14, 'FontWeight', 'bold');

% Guardar figura
saveas(gcf, 'ejercicio2_onda.png');

fprintf('✓ Figura del Ejercicio 2 generada exitosamente.\n');
fprintf('  - ejercicio2_onda.png\n');
