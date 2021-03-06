% script to find the intersection of the two functions, iterating through various values of p
%
% Syntax    taskfour()
%
% Inputs Nil
%
% Outputs Nil
% 
% Written by S Darcy

leftroot = [0.5;0.5];
rightroot = [3;1];
for p=0:2
  disp('p equals ');
  disp(p);
  leftroot = newton(p,leftroot,1e-13,500)
  rightroot = newton(p,rightroot,1e-13,500)
end
