function []=taskone()
  % function to graph over the domain of the function Cos(b)Cosh(b) = 1
  % will ask user for domain upper and lower limits for graph
  %
  % Syntax    []=taskone()
  %
  % Inputs Nil
  %
  % Outputs Nil
  % 
  % Written by S Darcy


  % Close any open figures
  close all;

  %Draw the elipse using 360 degrees of a circle
  cirang = linspace(0,360,1000); 
  [cirx, ciry] = circlefunction(4,4/3,cirang);

  plot(cirx,ciry), hold on;


  % Calculate function values at 1000 pts between the provided upper and lower parameters
  high = 3;
  low = -1;
  x = linspace(low,high,1000); 
  y = variablefunction(x, 0);
  y1 = variablefunction(x, 1);
  y2 = variablefunction(x, 2);
  
  % Plot the function
  plot(x,y), hold on;
  plot(x,y1), hold on;
  plot(x,y2), hold on;

  plot(x,zeros(size(x)),'g-');
  plot(zeros(size(x)),x,'g-');
  title('y = x^2 - 2x + p compared to x^2 + y^2 = 16');

end
