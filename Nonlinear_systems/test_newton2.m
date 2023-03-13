disp(sprintf(['\nComputing the square root of a=3 with tangent method\n'...
    'with three different functions:\n'...
    'f1(x)=x^2-a,\n'...
    'f2(x)=1-a/x^2,\n'...
    'f3(x)=x-a/x.\n'...
    ]))
pause

disp(sprintf(['\nWe need to compute all three derivatives:\n'...
    'der(f1)=2*x,\n'...
    'der(f2)=6/x^3,\n'...
    'der(f3)=1+3/x^2.\n'...
    ]))
pause

disp(sprintf(['\nTangent method with f1 and x0=3:\n']))
pause
f1=inline('x^2-3');
f1prime=inline('2*x');
newton(f1,f1prime,3)
pause

disp(sprintf(['\nTangent method with f2 and x0=3:\n']))
pause
f2=inline('1-3/x^2');
f2prime=inline('6/x^3');
newton(f2,f2prime,3)
pause 

disp(sprintf(['\nTangent method with f3 and x0=3:\n']))
pause
f3=inline('x-3/x');
f3prime=inline('1+3/x^2');
newton(f3,f3prime,3)