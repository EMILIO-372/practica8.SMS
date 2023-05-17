function dx=MotorDC(t,x)
%-----Definicion de los parametros-----%
R=2;
kt = 0.01;
beta = 0.0012;
L = 0.023;
kv = 0.01;
J = 0.001;
Vi = 24*(0.25);
%--------------------------------------%
    dx = zeros(3,1);  
%-----Definicion de la dinamica del sistema-----%
dx(1) = ((1/L)*(Vi-kv*x(3)-R*x(1)));
dx(2) = x(3);
dx(3) = ((1/J)*(kt*x(1)-beta*x(3)));
%--------------------------------------%

end