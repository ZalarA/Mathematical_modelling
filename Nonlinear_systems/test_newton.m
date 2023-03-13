disp(sprintf(['\nSolving the equation x-x^(1/3)-2=0 with tangent method\n'...
    'and initial approximation x0=3:\n']))
pause

disp(sprintf(['\nWe need to compute the derivative:\n'...
    'der(f)=1-1/3*x^(-2/3),\n']))
pause

f=inline('x-x^(1/3)-2');
fprime=inline('1-1/3*x^(-2/3)');

newton(f,fprime,3)