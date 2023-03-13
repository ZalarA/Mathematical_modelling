f=inline('[(x(1)^2+1)^2+(x(2)^2+1)+(x(1)+x(2)+1)^2]')
gradf=inline(strcat(...
            ' [ 2*(x(1)^2+1)*2*x(1)+2*(x(1)+x(2)+1);',...
            ' 2*(x(2)^2+1)*2*x(2)+2*(x(1)+x(2)+1)]'));
x=gradient_descent(f,gradf,[1;1])
broyden(gradf,eye(2),x)

