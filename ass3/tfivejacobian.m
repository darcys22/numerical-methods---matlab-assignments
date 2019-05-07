function [fg J]=tfivejacobian(xy, p)

  %x=xy(1); y=xy(2);
  fg=[x^2+9*y^2-16; 
      y-x^2+2*x-p];
  J=[2*x 18*y 2-2*x 1];
end
