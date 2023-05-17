[t,x] = ode45(@MotorDC, [0 10], [0 0 0]);
    
figure;
plot(t, x(:,3));
grid on;
title('Velocidad');
