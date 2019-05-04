function Xs=newtontest()

  % newton
  p = 0;
  xy = [1;1];
  for i=1:1000
    x=xy(1); y=xy(2);
    fg=[x^2+9*y^2-16 
        y-x^2+2*x-p];
    J=[2*x 18*y
        2-2*x 1];
    xy=xy-J\fg

  end

end
