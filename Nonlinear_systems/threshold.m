function [r]=threshold(X,p)
    [n,d]=size(X);
    [mu,U,V,D]=pca(X,d);
    r=1;
    l=sum(D);
    vsota=D(1);
    t=vsota/l;
    while t<p
        r=r+1;
        vsota=vsota+D(r);
        t=vsota/l
    end
    v=zeros(1,d);
    for i=1:d
        v(i)=sum(D(1:i)/l);
    end
    plot(0:d,[0,v])
end