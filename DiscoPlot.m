%%%PLOT%%%
T  = [0 10];          % Tiempo de simulación
x0 = [0; 2];          % [theta(0); theta_punto(0)]

[t, x] = ode45(@Disco, T, x0);

theta       = x(:,1);
theta_punto = x(:,2);

%% -------- Figura 1: Graficas separadas --------
figure(1)

subplot(2,1,1)
plot(t, theta, 'LineWidth',1.2)
grid on
ylabel('\theta (rad)')
title('Posición angular del disco')

subplot(2,1,2)
plot(t, theta_punto, 'LineWidth',1.2)
grid on
xlabel('Tiempo (s)')
ylabel('\dot{\theta} (rad/s)')
title('Velocidad angular del disco')

%% -------- Figura 2: Graficas juntas --------
figure(2)

plot(t, theta, 'LineWidth',1.2)
hold on
plot(t, theta_punto, 'LineWidth',1.2)
hold off
grid on

xlabel('Tiempo (s)')
ylabel('Magnitud angular')
title('Respuesta angular del sistema')
legend('\theta','\dot{\theta}')
