close all

disp(sprintf(['\nPlotting a sphere with radius r=3 using spherical coordinates:\n\n'...
    'x(u,v)=3.*cos(u).*cos(v)\n'...
    'y(u,v)=3.*cos(u).*sin(v)\n'...
    'z(u,v)=3.*sin(u)']))
pause
disp(sprintf(['\nFor plotting one uses a built-in function surf(x,y,z).']))
pause

psi=linspace(-pi/2,pi/2);
varphi=linspace(0,2*pi);
[psi,varphi]=meshgrid(psi,varphi);
x=3.*cos(psi).*cos(varphi);
y=3.*cos(psi).*sin(varphi);
z=3.*sin(psi);
surf(x,y,z);

disp(sprintf(['\nAdding a coordinate curve:\n\n'...
    'x(pi/4,v)=3*cos(pi/4)*cos(v)\n'...
    'y(pi/4,v)=3*cos(pi/4)*sin(v)\n'...
    'z(pi/4,v)=sin(pi/4)']))
pause
hold on
pause
psi=linspace(-pi/2,pi/2);
varphi=linspace(0,2*pi);
psi=pi/4-0.*varphi;
x=3.*cos(psi).*cos(varphi);
y=3.*cos(psi).*sin(varphi);
z=3.*sin(psi);
plot3(x,y,z,'r','LineWidth',3);
pause

disp(sprintf(['\nAdding a coordinate curve:\n\n'...
    'x(u,pi/4)=3*cos(u)*cos(pi/4)\n'...
    'y(u,pi/4)=3*cos(u)*sin(pi/4)\n'...
    'z(u,pi/4)=sin(u)']))
pause
hold on
pause
psi=linspace(-pi/2,pi/2);
varphi=linspace(0,2*pi);
varphi=pi/4-0.*psi;
x=3.*cos(psi).*cos(varphi);
y=3.*cos(psi).*sin(varphi);
z=3.*sin(psi);
plot3(x,y,z,'g','LineWidth',3);