function [Y]=pcaplot(X,k)
    [mu,U,V,D]=pca(X,k);
    Y=U*diag(D);
    [n,d]=size(X);
    S=X-ones(n,d)*diag(mu(1:k))
    plot(S(:,1),S(:,2),'*');
    hold on
    x=V(:,1);y=V(:,2);z=V(:,3);
    plot([0,50*x(1)],[0,50*x(2)]);
    hold on
    plot([0,10*y(1)],[0,10*y(2)]);
    hold off
end

%X=[1777,0;1838,12;1752,0;1826,15;1862,2;1854,5;1882,0;1815,0;1835,2;1843,20]
%pca(X,2)