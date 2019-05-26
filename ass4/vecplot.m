function [vd,dd]=vecplot(fname)
  % function to graph over the domain of the function Cos(b)Cosh(b) = 1
  % will ask user for domain upper and lower limits for graph
  %
  % Syntax    []=graph()
  %
  % Inputs Nil
  %
  % Outputs Nil
  % 
  % Written by S Darcy

  % Close any open figures
  close all;

  d=load(fname);
  dd = d.Dnew;
  vd = d.vnew;

  %Vertical axis (y) against / versus Horizontal axis (x).

  plot(vd, dd), grid on; hold on;
  title('Plotting Drag against Velocity')
  xlabel('air velocity (v in metres per second)') 
  ylabel('drag force (D in Newtons)') 

  % Obtain the parameters for the domain from the user  
  %low=input('Input a lower value for the graph ');
  %high=input('Input an upper value for the graph ');

  %% Calculate function values at 1000 pts between the provided upper and lower parameters
  %x = linspace(low,high,1000); 
  
  %%x = linspace(-5,5,1000); 

  %%y = cos(x) .* cosh(x) - 1;
  %y = frequencyfunction(x);

  %% Plot the function
  %plot(x,y), grid on; hold on
  %plot(x,zeros(size(x)),'g-');
  %title('Cos(B)Cosh(B) = 1')

end
