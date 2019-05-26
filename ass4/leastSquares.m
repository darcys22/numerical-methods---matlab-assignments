function [P condition]=leastSquares(X,Y,N)
  % function to draw a generic elipse, taking the a and b values from the canonical form and returning the x and y values at a certain angle
  %
  % Syntax [P S]=leastSquares(X,Y,N)
  %
  % Inputs:
  %   X - elipse function canonical variable
  %   Y - elipse function canonical variable
  %   N - the angle from the origin to solve the points for
  %
  % Outputs:
  %   P - resulting x coordinate 
  %   condition - resulting y coordinate 
  % 
  % Written by S Darcy
  
  
  %make column vectors
  X = X';
  Y = Y';
 
  
  if N == 2 
    M=[X,ones(length(X),1)];
  elseif N == 3
    M=[X.^2 X ones(length(X),1)];
  else
    fprintf('Cannot compute N sized polynomial\n');
  end

  P=(M'*M)\(M'*Y);
  condition = cond(M'*M);
  

end

