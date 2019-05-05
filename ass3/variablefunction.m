function [y]=variablefunction(inx, inp)
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
  %

  a = inx .^2;
  b = - (2 .* inx);

  y = a + b + inp;
end
