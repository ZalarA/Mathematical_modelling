%Finding a global mimimum of the function -2*x1+x2-x3
%with constraints using Lasserre relaxation technique

clear all
mpol x1 x2 x3

f=-2*x1+x2-x3
K=[24-20*x1+9*x2-13*x3+4*x1^2-4*x1*x2+4*x1*x3+2*x2^2-2*x2*x3+2*x3^2 >= 0,...
   x1+x2+x3 <= 4, 3*x2+x3 <= 6, 0 <= x1, x1 <= 2, 0 <= x2, 0 <= x3, x3 <= 3];
P=msdp(min(f),K)
[status,object]=msol(P)

P=msdp(min(f),K,2)
[status,object]=msol(P)

P=msdp(min(f),K,3)
[status,object]=msol(P)

P=msdp(min(f),K,4)
[status,object]=msol(P)