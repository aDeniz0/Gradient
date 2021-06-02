%%%%%%%%%%%% 3.soru

clc
clear all

x = -1:0.1:1;
y = -1:0.1:1;

[X,Y]=meshgrid(x,y);

Z = sin(pi.*X).*cos(pi.*Y);

%mesh
figure(1)
subplot(3,1,1)
mesh(X,Y,Z)

%contour
subplot(3,1,2)
contour(X,Y,Z)


[px,py] = gradient(Z);

%vector alan
subplot(3,1,3)
quiver(X,Y,px,py)
hold on 
contour(X,Y,Z)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
