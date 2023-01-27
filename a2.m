clear all
clc
syms x
syms y
z=cos(x).*cos(y).*exp(-sqrt((x.^2+y.^2)/4))
ezcontourf(z,[-3,3,-3,3])