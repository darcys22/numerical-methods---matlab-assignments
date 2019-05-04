function Xs=functioncalled(xy,p)
  %p = 0;
  %xy = [8.5;-1];
  x=xy(1); y=xy(2);
  fg=[x^2+9*y^2-16 
      y-x^2+2*x-p];
  Xs=xy.*fg;
end
