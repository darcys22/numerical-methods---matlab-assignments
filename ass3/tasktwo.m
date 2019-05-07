function [fg J]=tasktwo(xy, p)
  % function to provide the solutions two the two functions at their respective X,Y and P pointss aswell as calculate the Jacobian for the two functions
  %
  % Syntax    [fg J]=tasktwo(xy, p)
  %
  % Inputs:
  %   xy - vector of the x and the y 
  %   p - p value for the function y = x^2 - 2x + p
  %
  % Outputs:
  %   fg - result at input x,y and p
  %   J - Jacobian at input x,y
  % 
  % Written by S Darcy

  x=xy(1); y=xy(2);
  fg=[x^2+9*y^2-16; 
      y-x^2+2*x-p];
  J=[2*x 18*y;
      2-2*x 1];
end
