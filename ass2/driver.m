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



%generate 200 elements for the initial value for newtons method
x = linspace(0.01,50,200); 

%Call newtons method with a tolerance of 1e-13 and a maximum of 500 iterations for all elements of x generated above
res = sort(newton('frequencyfunction',x,1e-13,500));

%filter out all the unique values (defining unique as greater than 1 of its neighbour in a sorted list)
uniq = diff(res) > 1;

%The first 2 elemenst are are negative and then zero is also a root. The first 4 positive results will be the first physically meaningful
physMeaningful = res(uniq)(4:7)

%Pass the first 4 meaningful elements to test if they actually are a root
testcorrect(physMeaningful);

graph()

