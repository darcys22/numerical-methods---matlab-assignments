% script to graph over the the two functions, showing the two points converging as P increases 
%
% Syntax    tasksix()
%
% Inputs Nil
%
% Outputs Nil
% 
% Written by S Darcy

leftroot = [0.5;0.5];
x = [];
y = [];
for p=-5:4
  try
    leftroot = newton(p,leftroot,1e-13,500);
    y = [y leftroot(1)-leftroot(2)];
  catch me
    y = [y 0-0];
    leftroot = [0.5;0.5];
  end
  x = [x p];
end

plot(x,y), hold on;

plot(x,zeros(size(x)),'g-');
plot(zeros(size(x)),x,'g-');
title('The X and Y components converging as P increases');
