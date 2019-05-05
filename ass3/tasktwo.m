function [fg J]=tasktwo(xy, p)
  % frequency function for vibration of a uniform beam clamped at one end: cos(B)cosh(B) = 1
  %
  % Syntax    []=frequencyfunction(inx)
  %
  % Inputs:
  %   inx - X value 
  %   iny - Y value
  %
  % Outputs:
  %   y - result at input
  %   dydx - derivative of result at input
  % 
  % Written by S Darcy

  x=xy(1); y=xy(2);
  fg=[x^2+9*y^2-16; 
      y-x^2+2*x-p];
  J=[2*x 18*y;
      2-2*x 1];
end
