%% Final Problem 3
clear; close all; clc

syms x y z u v w 
assume([x y z u v w],'real')
assumeAlso([x y z u v w], 'positive')

syms fx(x) fy(y) fz(z) fxyz(x,y,z)

fx(x) = exp(-x);
fy(y) = exp(-y);
fz(z) = exp(-z);

fxyz(x,y,z) = fx(x)*fy(y)*fz(z); % Joint PDF

disp(fxyz)

%% Finding the transform and inverse transform
[invx, invy, invz] = solve(u==x/(x+y) , v==(x+y)/(x+y+z) , w==x + y + z, [x,y,z]);

disp([invx, invy, invz])

%% Jacobian

% u = x/(x+y);
% v = (x+y)/(x+y+z);
% w = x + y + z;

J = [diff(invx,u) diff(invx,v) diff(invx,w); ...
    diff(invy,u) diff(invy,v) diff(invy,w); ...
    diff(invz,u) diff(invz,v) diff(invz,w)];

detJ = det(J);

disp(detJ)

%% Find the Joint PDF f_{U,V,W}(u,v,w)

syms fuvw(u,v,w) fu(u) fv(v) fw(w)

fuvw(u,v,w) = subs(fxyz*detJ,[x,y,z],[invx,invy,invz]); % x,y,z > 0  

fuvw = simplify(fuvw);

disp(fuvw)

