% script to find the intersection of the two functions at a single point for p
%
% Syntax    taskthree()
%
% Inputs Nil
%
% Outputs Nil
% 
% Written by S Darcy

leftroot = [0.5;0.5];
rightroot = [3;1];
p = 0;

leftroot = newton(p,leftroot,1e-13,500)
%testresults(leftroot,p)

rightroot = newton(p,rightroot,1e-13,500)
%testresults(rightroot,0)
