disp(sprintf(['\nSolving the nonlinear system\n\n'... 
    'f(x,a,b)=a*exp(bx)\n\n'... 
    'with variables (a,b) and points (x,y) equal to\n\n',...
    '(0,2),(1,3),(2,0.3),(3,0.1)\n\n'...
    'in the least squares sense using Gauss-Newton method.\n']))
pause
disp(sprintf(['The system we are solving is\n\n'...
    'F(a,b)=(F1(a,b),F2(a,b),F3(a,b),F4(a,b))=(0,0,0,0),\n\n'...
    'where\n\n'...
    'F1(a,b)=2-a*exp(b*0)=0,\n'...
    'F2(a,b)=0.7-a*exp(b*1)=0,\n'...
    'F3(a,b)=0.3-x(1)*exp(x(2)*2)=0,\n'...
    'F4(a,b)=0.1-x(1)*exp(x(2)*3)=0.']))

F=inline('[2-x(1)*exp(x(2)*0);0.7-x(1)*exp(x(2)*1);0.3-x(1)*exp(x(2)*2);0.1-x(1)*exp(x(2)*3)]');

% Jacobi matrix

disp(sprintf(['\nWe need a Jacobi matrix:\n\n',...
    'der(F1(a,b),a)=-exp(b*0),\n'...
    'der(F1(a,b),b)=-a*b*exp(b*0),\n\n'...
    'der(F2(a,b),a)=-exp(b*1),\n'...
    'der(F2(a,b),b)=-a*b*exp(b*1),\n\n'...
    'der(F3(a,b),a)=-exp(b*2),\n'...
    'der(F3(a,b),b)=-a*b*exp(b*2),\n\n'...
    'der(F4(a,b),a)=-exp(b*3),\n'...
    'der(F4(a,b),b)=-a*b*exp(b*3).\n']))
pause
JF=inline('[-exp(x(2)*0),-x(1)*exp(x(2)*0)*x(2);-exp(x(2)*1),-x(1)*exp(x(2)*1)*x(2);-exp(x(2)*2),-x(1)*exp(x(2)*2)*x(2);-exp(x(2)*3),-x(1)*exp(x(2)*3)*x(2)]');

%s=gaussnewton(F,JF,[1.1;1.1]);
%s=gaussnewton(F,JF,[-1.1;-1.1]);
%s=gaussnewton(F,JF,[1.1;-1.1]);
disp(sprintf(['Using initial approximation (a0,b0)=(2,-3), we get:\n\n']))
pause
s=gaussnewton(F,JF,[2;-3]);
pause
disp(sprintf(['Plotting the solution:\n\n']))
pause
x=[0 1 2 3]; y=[2 0.7 0.3 0.1];
plot(x,y,'o')
hold on
a=s(1); b=s(2);
x=linspace(-1,4); y=a*exp(b*x);
plot(x,y)
hold off
pause

disp(sprintf(['Using initial approximation (a0,b0)=(-1.1,1.1), we get:\n\n']))
pause
s=gaussnewton(F,JF,[-1.1;1.1]);
pause
disp(sprintf(['Plotting the solution:\n\n']))
pause
x=[0 1 2 3]; y=[2 0.7 0.3 0.1];
plot(x,y,'o')
hold on
a=s(1); b=s(2);
x=linspace(-1,4); y=a*exp(b*x);
plot(x,y)
hold off

%f=@(x,y) (2-x.*exp(y.*0)).^2+(0.7-x.*exp(y.*1)).^2+(0.3-x.*exp(y.*2)).^2+(0.1-x.*exp(y.*3)).^2
%[x,y]=meshgrid(1:0.05:1.1,1:0.05:1.1)
%z = f(x,y);
%surf(x,y,z)

%[x,y]=meshgrid(0.95:0.005:1.05,0.95:0.005:1.05)
%z = f(x,y);
%surf(x,y,z)