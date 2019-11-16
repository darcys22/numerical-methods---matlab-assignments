function [y]=odeOne(timeV)

  y = 2 .* exp( timeV) .- timeV .- 1;

  % Plot the function
  plot(timeV,y), grid on; hold on
  plot(timeV,zeros(size(timeV)),'g-');

end
