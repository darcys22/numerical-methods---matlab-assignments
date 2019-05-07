function [y]=variablefunction(inx, inp)
  % function to solve the function y = x^2 - 2x + p 
  %
  % Syntax    []=variablefunction(inx, inp)
  %
  % Inputs:
  %   inx - value for x in the function 
  %   inp - value for p in the function 
  %
  % Outputs:
  %   y - result at input
  % 
  % Written by S Darcy
  %

  a = inx .^2;
  b = - (2 .* inx);

  y = a + b + inp;
end
