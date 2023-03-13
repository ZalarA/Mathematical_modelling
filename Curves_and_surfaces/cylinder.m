close all

disp(sprintf(['\nPlotting a cylinder with radius r=3 using cylindrical coordinates:\n\n'...
    'x(u,v)=3*cos(u)\n'...
    'y(u,v)=3*sin(u)\n'...
    'z(u,v)=v']))
pause
disp(sprintf(['\nFor plotting one uses a built-in function surf(x,y,z).']))
pause

r=3;
u=linspace(0,10);
v=linspace(0,2*pi);
[U,V]=meshgrid(u,v);
x=r.*cos(U);
y=r.*sin(U);
z=V;
surf(x,y,z);
