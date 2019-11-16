function [y]=odeTwo(h,init,maxval)

  t=init(1); y=init(2);

  X = [t];
  Y = [y];
  
  % newton
  while t < maxval
    yDot = t + y;
    yNew = y + h * yDot;

    y = yNew;
    t = t + h;

    X=[X,t];
    Y=[Y,y];

  end

  % Plot the function
  plot(X,Y), grid on; hold on
  plot(X,zeros(size(X)),'g-');

end
