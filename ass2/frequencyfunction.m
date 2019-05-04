function [y dydx]=frequencyfunction(inx)
  % frequency function for vibration of a uniform beam clamped at one end: cos(B)cosh(B) = 1
  %
  % Syntax    []=frequencyfunction(inx)
  %
  % Inputs:
  %   inx - vector of values to call function on
  %
  % Outputs:
  %   y - result at input
  %   dydx - derivative of result at input
  % 
  % Written by S Darcy

  y = cos(inx) .* cosh(inx) - 1;
  dydx = cos(inx) .* sinh(inx) - sin(inx) .* cosh(inx);
end
