function [x y]=circlefunction(a,b,ang)
  % function to draw a generic elipse, taking the a and b values from the canonical form and returning the x and y values at a certain angle
  %
  % Syntax    []=circlefunction(a, b, ang)
  %
  % Inputs:
  %   a - elipse function canonical variable
  %   b - elipse function canonical variable
  %   ang - the angle from the origin to solve the points for
  %
  % Outputs:
  %   x - resulting x coordinate 
  %   y - resulting y coordinate 
  % 
  % Written by S Darcy
  %

  x = a .* cos(ang);
  y = b .* sin(ang);


end
