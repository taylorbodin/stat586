%% Problem 5.75
% I used the code from the book

%% Setup
clear; close all; clc

[X,Y] = meshgrid(-8:0.1:8);
mux = 0; muy = 0;

%% A
stdx = 3; stdy = 3;
varx = stdx^2; vary=stdy^2;
rho = 0;

X1 = (X-mux)/stdx;
Y1 = (Y-muy)/stdy;

Z = X1.^2-2*rho*X1.*Y1+Y1.^2;
c = 1;

figure(1);
contour(X,Y,Z,c)

title('Std x = Std y');
xlabel('x'); ylabel('y');
axis([-9 9 -9 9]);


%% B
stdx = 1; stdy = 3;
varx = stdx^2; vary=stdy^2;
rho = 0;

X1 = (X-mux)/stdx;
Y1 = (Y-muy)/stdy;

Z = X1.^2-2*rho*X1.*Y1+Y1.^2;
c = 1;

figure(2);
contour(X,Y,Z,c)

title('Std x < Std y');
xlabel('x'); ylabel('y');

%% C
stdx = 3; stdy = 1;
varx = stdx^2; vary=stdy^2;
rho = 0;

X1 = (X-mux)/stdx;
Y1 = (Y-muy)/stdy;

Z = X1.^2-2*rho*X1.*Y1+Y1.^2;
c = 1;

figure(3);
contour(X,Y,Z,c)

title('Std x > Std y');
xlabel('x'); ylabel('y');

%% D
stdx = 3; stdy = 3;
varx = stdx^2; vary=stdy^2;
rho = .5;

X1 = (X-mux)/stdx;
Y1 = (Y-muy)/stdy;

Z = X1.^2-2*rho*X1.*Y1+Y1.^2;
c =1;

figure(4);
contour(X,Y,Z,c)

title('Std x = Std y, Rho != 0');
xlabel('x'); ylabel('y');


%% E
stdx = 3; stdy = 3;
varx = stdx^2; vary=stdy^2;
rho = 0;

X1 = (X-mux)/stdx;
Y1 = (Y-muy)/stdy;

Z = X1.^2-2*rho*X1.*Y1+Y1.^2;
c = [.1 .5 1 2 4 8];

figure(5);
contour(X,Y,Z,c)

title('Std x = Std y, Various C');
xlabel('x'); ylabel('y');