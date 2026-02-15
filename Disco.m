function dx=Disco(t,x)
m = 10;       % kg
r=0.05;
k=100;

dx = zeros(2,1); % Initialize the derivative vector
dx(1) = x(2);    % First equation: velocity
dx(2) = -(2*k)/(3*m)*x(1);% Second equation: acceleration

end