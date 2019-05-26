% Script to evaluate the aircraft drag tests
% Will first plot the data and extract it into X and Y vectors
% Performs Linear and Quadratic Least Squares Curve Fitting
% Plots the Fitted Curves and the residuals
%
% Syntax:   driver()
%
% Inputs Nil
%
% Outputs Nil
% 
% Written by S Darcy

[vd,dd]=vecplot("Assignment4.mat");
pause;

close all;

subplot(2,2,1)
[P condition]=leastSquares(vd,dd,2)
plot(vd, dd), grid on; hold on;
plot(vd,polyval(P,vd),'LineWidth',3.0)
title('Linear Least Squares Curve Fitting')
xlabel('air velocity (v in metres per second)') 
ylabel('drag force (D in Newtons)') 


subplot(2,2,2)
residualLinear=dd-polyval(P,vd);
plot(vd,residualLinear);
title('Linear Least Squares Residuals')


subplot(2,2,3)
[P condition]=leastSquares(vd,dd,3)
plot(vd, dd), grid on; hold on;
plot(vd,polyval(P,vd),'LineWidth',3.0)
title('Quadratic Least Squares Curve Fitting')
xlabel('air velocity (v in metres per second)') 
ylabel('drag force (D in Newtons)') 


subplot(2,2,4)
residualQuadratic=dd-polyval(P,vd);
plot(vd,residualQuadratic);
title('Quadratic Least Squares Residuals')



