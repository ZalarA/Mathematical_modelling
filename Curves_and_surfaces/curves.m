close all

disp(sprintf(['\nPlots of different curves given parametrically.\n\n']))
pause

disp(sprintf(['\nFigure 1: x(t)=t*cos(t), y=t*sin(t)\n']))
pause
t=linspace(-3*pi/4,3*pi/4,100);
x=t.*cos(t);
y=t.*sin(t);
figure(1)
plot(x,y)
legend('x(t)=t*cos(t), y=t*sin(t)')
axis normal
pause

disp(sprintf(['\nFigure 2: x(t)=cos(t.^3), y(t)=sin(t.^3), z(t)=t./5\n']))
pause
t=linspace(0,4*pi,1000000);
x=cos(t.^3);
y=sin(t.^3);
z=t./5;

figure(2)
plot(x,y)
legend('x(t)=cos(t.^3), y(t)=sin(t.^3), z(t)=t./5')
grid on
figure(3)
plot3(x,y,z)
pbaspect([1 1 1])
grid on
pause

disp(sprintf(['\nFigure 3: x(t)=2*cos(t), y(t)=2*sin(t)\n']))
pause
t=linspace(0,2*pi);
x=2*cos(t);
y=2*sin(t);
figure(4)
plot(x,y)
legend('x(t)=2*cos(t), y(t)=2*sin(t)')
pause

disp(sprintf(['\nFigure 4: x(t)=t.^3-2*t; y(t)=t.^2-t\n']))
pause
t=linspace(-2,2);
x=t.^3-2*t;
y=t.^2-t;
figure(5)
plot(x,y)
legend('x(t)=t.^3-2*t; y(t)=t.^2-t')
pause

disp(sprintf(['\nFigure 5: x(t)=t+sin(3*t); y(t)=t+cos(5*t)\n']))
pause
t=linspace(-10,10);
x=t+sin(3*t);
y=t+cos(5*t);
figure(6)
plot(x,y)
legend('x(t)=t+sin(3*t); y(t)=t+cos(5*t)')
pause

disp(sprintf(['\nFigure 6: x(t)=1/10*(t-sin(t)); y(t)=1/10*(1-cos(t))\n']))
pause
t=linspace(0,10*pi,10000);
figure(7)
x=1/10*(t-sin(t));
y=1/10*(1-cos(t));
plot(x,y)
legend('x(t)=1/10*(t-sin(t)); y(t)=1/10*(1-cos(t))')

pause

disp(sprintf(['\nFigure 7:\n'...
    'x(t)=t.^2-1; y(t)=-t.^3-t.^2+t+1\n'...
    'x(t)=t-1; y(t)=1-t.^2\n\n']))
pause
t=linspace(-1.5,1.5);
figure(8)
x=t.^2-1;
y=-t.^3-t.^2+t+1;
plot(x,y)
hold on
x=t-1;
y=1-t.^2;
plot(x,y,'g')
legend('x(t)=t.^2-1; y(t)=-t.^3-t.^2+t+1','x(t)=t-1; y(t)=1-t.^2')
hold off