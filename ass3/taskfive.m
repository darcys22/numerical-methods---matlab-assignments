% script to find the intersection of the two functions, simultaneously solving through various values of p
%
% Syntax    taskfive()
%
% Inputs Nil
%
% Outputs Nil
% 
% Written by S Darcy

Xest = [0.5;0.5];
p = linspace(-1,2,4);
tol = 1e-13;
imax = 500;



for i=1:imax
  x=Xest(1); y=Xest(2);
  J=[2*x 18*y 2-2*x 1];
  bigJ = reshape(repmat(J,size(p)), [4 4]);

  j_det = transpose(bigJ(1,:).*bigJ(4,:) - bigJ(2,:).*bigJ(3,:));

  x = ones(4,1);
  a_det = det(bigJ);
  for i = 1:4
    C = bigJ;
    C(:,i) = j_det;
    x(i,1) = det(C)/a_det;
  end

  Xi = Xest - inv(bigJ) .* x

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
