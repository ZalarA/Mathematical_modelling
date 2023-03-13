close all

disp(sprintf(['Torus in parametrical coordinates\n\n'...
    'radius of the bigger circle 2,\n'...
    'radius of the smaller circle 1:\n\n'...
    'x(t,v)=(2+cos(t)).*cos(v)\n'...
    'y(t,v)=(2+cos(t)).*sin(v)\n'...
    'z(t,v)=sin(t)\n\n']))
pause

t=linspace(0,2*pi);
v=linspace(0,2*pi);
[t,v]=meshgrid(t,v);
x=(2+cos(t)).*cos(v);
y=(2+cos(t)).*sin(v);
z=sin(t);
surf(x,y,z);
hold on
pause
clear t
clear v
pause

disp(sprintf('A tangent plane at t0=pi/3,v_0=pi/6.\n\n'))
pause
t0=pi/3; v0=pi/6;
disp(sprintf('A point on the torus.\n'))
p=[(2+cos(t0))*cos(v0),(2+cos(t0))*sin(v0),sin(t0)]
pause
disp(sprintf('Tangent vector to one coordinate curve, i.e., fixed v0.\n'))
e1=[-sin(t0)*cos(v0),-sin(t0)*sin(v0),cos(t0)]
pause
disp(sprintf('Tangent vector to one coordinate curve, i.e., fixed t0.\n'))
e2=[-(2+cos(t0))*sin(v0),(2+cos(t0))*cos(v0),0]
pause
disp(sprintf(['A plane has parametrization:\n\n'...
'A(t)=e1(1).*t+e2(1).*v+p(1),\n'...
'B(t)=e1(2).*t+e2(2).*v+p(2),\n'...
'C(t)=p(3)+e1(3).*t.\n\n']))
pause
t=linspace(-1,1);
v=linspace(-1,1);
[t,v]=meshgrid(t,v);
A=e1(1).*t+e2(1).*v+p(1);
B=e1(2).*t+e2(2).*v+p(2);
C=p(3)+e1(3).*t;
surf(A,B,C);
clear all
pause
disp(sprintf(['A curve on the torus:\n'...
    '(2+cos(3t))*cos(t),(2+cos(3t))*sin(t),sin(t).\n\n']))
pause
t=linspace(0,2*pi);
x=(2+cos(3.*t)).*cos(t);
y=(2+cos(3.*t)).*sin(t);
z=sin(3.*t);
plot3(x,y,z,'r','LineWidth',5)
hold off

pause
disp(sprintf(['A cone is also a surface of revolution obtained by\n'...
    'revolving a line x=z around the z axis.\n\n']))
pause

figure(2)
t=linspace(0,10);
v=linspace(0,2*pi);
[t,v]=meshgrid(t,v);
x=t.*cos(v);
y=t.*sin(v);
z=t;
surf(x,y,z);

pause
disp(sprintf(['A cylinder with radius 3 is obtained by rotating '...
    'a line x=3 around the z axis.\n\n']))
pause

figure(3)
t=linspace(0,10);
v=linspace(0,2*pi);
[t,v]=meshgrid(t,v);
x=3.*cos(v);
y=3.*sin(v);
z=t;
surf(x,y,z);

pause
disp(sprintf(['A sphere of radius 1 is obtained by rotating\n'...
    'half circle (x,z)=(cos(t),sin(t)), t...(-pi/2,pi/2) around'...
    ' the z axis.\n\n']))
pause

figure(4)
t=linspace(-pi/2,pi/2);
v=linspace(0,2*pi);
[t,v]=meshgrid(t,v);
x=cos(t).*cos(v);
y=cos(t).*sin(v);
z=sin(t);
surf(x,y,z);


