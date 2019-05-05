function Xs=newton(p,Xest,tol,imax)
  % function to run the newton-rhapson method to solve an equation numerically
  %
  % Syntax:   Xs=newton(fun,Xest,tol,imax)
  %
  % Inputs:
  %   fun - a function that takes an x input and returns the result and the derivative of the result
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

