function Xs=newton(p,Xest,tol,imax)
  % function to run the newton method to locate the intersection of the two functions 
  %
  % Syntax:   Xs=newton(p,Xest,tol,imax)
  %
  % Inputs:
  %   p - p variable for the constant in the parabola function 
  %   Xest - an estimated x value for the newton method to start from
  %   tol - tolerance for the method to test to
  %   imax - maximum iterations before exiting
  %
  % Outputs:
  %   Xs - solution from the method
  % 
  % Written by S Darcy


  % newton
  for i=1:imax
    [fg J] = tasktwo(Xest,p);
    Dx = -J\fg;
    Xi = Xest + Dx;
    if abs(Xi - Xest)/Xest < tol
      Xs = Xi;
      break
    end
    Xest = Xi;
  end
  if i == imax
    error('solution did not converge')
  end
  Xs = Xi;
end

