%Finding a global mimimum of the function (x^2+1)^2+(y^2+1)^2+(x+y+1)^2
%with Lasserre relaxation technique

clear all
mpol x1 x2

mpol x1 x2

f=(x1^2+1)^2+(x2^2+1)^2+(x1+x2+1)^2
P=msdp(min(f))
[status,object]=msol(P)
mu=meas
double(meas)
mv=mvec(mu)
double(mmat(mu))
