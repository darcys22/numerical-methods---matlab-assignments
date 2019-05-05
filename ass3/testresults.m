function Xs=testresults(xy,p)
  %p = 0;
  %xy = [8.5;-1];
  x=xy(1); y=xy(2);
  Xs=[x^2+9*y^2-16 
      y-x^2+2*x-p];
end
