close all

disp(sprintf(['\nPlotting a plane using cylindrical coordinates:\n\n'...
    'x(u,v)=1+u\n'...
    'y(u,v)=2+u+v\n'...
    'z(u,v)=3+2*v']))
pause

r0=[1,2,3];
e1=[1,1,0];
e2=[0,1,2];
u=linspace(-2,2);
v=u;
[U,V]=meshgrid(u,v);
x=r0(1)+U.*e1(1)+V.*e2(1);
y=r0(2)+U.*e1(2)+V.*e2(2);
z=r0(3)+U.*e1(3)+V.*e2(3);
surf(x,y,z)