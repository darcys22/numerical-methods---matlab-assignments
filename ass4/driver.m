% script to find the roots of the function Cos(b)Cosh(b) = 1
% will identify the first 4 meaningful results (positive)
% will test results to ensure they are actual roots
% will produce a graph for the user, requesting input for upper and lower domain of graph
%
% Syntax:   driver()
%
% Inputs Nil
%
% Outputs Nil
% 
% Written by S Darcy

[vd,dd]=vecplot("Assignment4.mat");

[P condition]=leastSquares(vd,dd,3)

