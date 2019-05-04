function [x y]=circlefunction(a,b,ang)
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

  x = a .* cos(ang);
  y = b .* sin(ang);


end
