
Xest = [[0.5;0.5],[3;1]];
p = linspace(0,2,3);
tol = 1e-13;
imax = 500;

xy = Xest(:,2)
x=xy(1); y=xy(2);

J=[2*x 18*y 2-2*x 1];
bigJ = reshape(repmat(J,size(p)), [4 3]);

f=repmat([x^2+9*y^2-16],size(p))
g=[y-x^2+2*x-p]
fg = transpose([f;g])

%for i=1:imax

%[fg J] = tasktwo(Xest,p)
%Dx = -J\fg;
%Xi = Xest + Dx;
%if abs(Xi - Xest)/Xest < tol
  %Xs = Xi;
  %break
%end
%Xest = Xi;

%end
%if i == imax
  %error('solution did not converge')
%end
%Xs = Xi;
