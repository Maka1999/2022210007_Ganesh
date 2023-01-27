clear all
clc
syms x
syms y
z=-5/(1+x.^2+y.^2)
fsurf(z,[-3 3 -3 3])