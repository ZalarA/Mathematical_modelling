close all
disp(sprintf(['Surface given in usual coordinate by:\n\n'...
    'z(x,y)=1-(x-1).^2-(y-1).^2.\n']))
pause

x=linspace(0,2);
y=x;
[X,Y]=meshgrid(x,y);
f=1-(X-1).^2-(Y-1).^2;
surf(X,Y,f);
hold on
z=linspace(-1,1);
[Y1,Z1]=meshgrid(y,z);
g=1.5-0*Y1;
pause

disp(sprintf(['Coordinate plane x=1.5.\n']))
pause

surf(g,Y1,Z1);
[X2,Z2]=meshgrid(x,z);
h=0.5-0*X2;
pause

disp(sprintf(['Coordinate plane y=0.5.\n']))
pause
surf(X2,h,Z2)
hold off
figure(2)
pause
surf(X,Y,f)
hold on
pause
y=linspace(0,2);

disp(sprintf(['Curve obtained as an intersection of the survace and y=0.5.\n']))
pause
x=1.5-0.*y;
z=1-(1-x).^2-(y-1).^2;
plot3(x,y,z,'r','LineWidth',3);
hold on
pause

disp(sprintf(['Curve obtained as an intersection of the survace and y=0.5.\n']))
pause
x=linspace(0,2);
y=0.5-0.*x;
z=1-(1-x).^2-(y-1).^2;
plot3(x,y,z,'g','LineWidth',3);