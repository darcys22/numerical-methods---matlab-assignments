function Xs=testresults(xy,p)
  % function to solve the two equations, returning the values at the given x and y coordinate and p variable
  %
  % Syntax    []=testresults(xy,p)
  %
  % Inputs:
  %   xy - vector of the x and y coordinates to solve the function at
  %   p - variable for y = x^2+2*x-p
  %
  % Outputs:
  %   Xs - vector of the results for the 2 functions 
  % 
  % Written by S Darcy
  
  
  
  %p = 0;
  %xy = [8.5;-1];
  x=xy(1); y=xy(2);
  Xs=[x^2+9*y^2-16 
      y-x^2+2*x-p];
end
