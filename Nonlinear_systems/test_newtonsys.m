disp(sprintf(['\nWe are searching for the intersection of the curves'...
    ' being zeroes of the following functions:\n']))
%
disp(sprintf(['f(x,y)=x^2 + y^2 - 10x+y-1,\n'...
    'g(x,y)=x^2 - y^2 - x + 10*y-25.\n']))

f = @(x,y) x.^2 + y.^2 - 10*x+y-1;
g = @(x,y) x.^2 - y.^2 - x + 10*y-25;
pause

disp(sprintf(['We plot both curves:\n']))
fimplicit(f,[-4 12])
hold on
fimplicit(g,[-4 12])
hold off
pause

disp(sprintf(['\nTo use Newton method we need the Jacobian:\n']))

F=inline('[ x(1)^2+x(2)^2-10*x(1)+x(2)-1; x(1)^2-x(2)^2-x(1)+10*x(2)-25]');

% Jacobi matrix
disp(sprintf(['JF(x)=\n'...
    '[2*x(1)-10, 2*x(2)+1 ;\n'...
    '2*x(1)-1, -2*x(2)+10].\n']))

JF=inline('[ 2*x(1)-10, 2*x(2)+1 ; 2*x(1)-1, -2*x(2)+10]');
pause

%we are searching for both intersections
disp(sprintf(['Now we can compute the intersections with Newton method\n'...
    'using different initial approximations:\n']))
pause
disp(sprintf(['(x0,y0)=(2,4)']))
pause
newtonsys(F,JF,[2;4]);
pause
disp(sprintf(['(x0,y0)=(8,-3)']))
pause
newtonsys(F,JF,[8;-3]);
pause
disp(sprintf(['(x0,y0)=(50,-32)']))
pause
newtonsys(F,JF,[50;-32]);

