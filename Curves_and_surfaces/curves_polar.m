close all

disp(sprintf(['\nPlots of different curves in polar coordinates.\n\n']))
pause

disp(sprintf(['\nFigure 1: r=1-sin(varphi).\n']))
pause
t=linspace(0,2*pi);
r=1-sin(t);
x=r.*cos(t); y=r.*sin(t);
plot(x,y)
legend('r=1-sin(varphi)')
pause

disp(sprintf(['\nFigure 2: r=(sin((t-pi)/12))^5+exp(sin(t))-2*cos(4*t)\n']))
pause
figure(2)
t=linspace(0,2*pi,1000);
r=(sin((t-pi)./12)).^5+exp(sin(t))-2.*cos(4.*t);
x=r.*cos(t); y=r.*sin(t);
plot(x,y)
legend('r=(sin((t-pi)/12))^5+exp(sin(t))-2*cos(4*t)')
pause

disp(sprintf(['\nFigure 3: r=1/varphi\n']))
pause
figure(3)
clear all
t=linspace(0.1*pi,8*pi,1000);
r=t.^(-1);
x=r.*cos(t); y=r.*sin(t);
plot(x,y)
legend('r=1/varphi')
pause

disp(sprintf(['\nFigure 4: r=cos(3t)/2\n']))
pause
figure(4)
clear all
t=linspace(0,2*pi);
r=cos(3.*t)./2;
x=r.*cos(t); y=r.*sin(t);
plot(x,y)
legend('r=cos(3t)/2')