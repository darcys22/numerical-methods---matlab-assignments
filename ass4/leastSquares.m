function [P condition]=leastSquares(X,Y,N)
  % function to calculate the least squares curve fitting algorithm over the provided X and Y data, will return the coefficients of a polynomial of degree N and the condition number of the system.
  %
  % Syntax [P condition]=leastSquares(X,Y,N)
  %
  % Inputs:
  %   X - vector of the X value Data
  %   Y - vector of the Y value Data
  %   N - degrees of the polynomial being fitted
  %
  % Outputs:
  %   P - resulting vector of coefficients for the polynomial 
  %   condition - condition number of the system
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

  if condition >= 1000
    warning("System is badly conditioned")
  end
  

end

