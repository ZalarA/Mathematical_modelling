close all

disp(sprintf(['\nPlotting a helix using cylindrical coordinates:\n\n'...
    'x(u,v)=u*cos(v)\n'...
    'y(u,v)=u*sin(v)\n'...
    'z(u,v)=v']))
pause

u=linspace(0,1/2);
v=linspace(0,4*pi);
[U,V]=meshgrid(u,v);
X=U.*cos(V);Y=U.*sin(V);Z=V;
surf(X,Y,Z);
pause

disp(sprintf(['\nAdding a coordinate curve:\n\n'...
    'x(1/4,v)=1/4*cos(v)\n'...
    'y(1/4,v)=u*sin(v)\n'...
    'z(u,v)=v']))
pause
hold on
u=1/4-0.*v;
x=u.*cos(v);y=u.*sin(v);z=v;
disp(sprintf(['\nFor plotting one uses a built-in function plot3(x,y,z).']))
pause
plot3(x,y,z,'r','LineWidth',3)
pause

disp(sprintf(['\nAdding a coordinate curve:\n\n'...
    'x(u,pi)=u*cos(pi)\n'...
    'y(u,pi)=u*sin(pi)\n'...
    'z(u,pi)=pi']))
hold on
u=linspace(0,1/2);
v=pi-0.*u;
x=u.*cos(v);y=u.*sin(v);z=v;
pause
plot3(x,y,z,'g','LineWidth',3)

