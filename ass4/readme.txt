Assignment 4 - Mat2409 - Semester 1, 2019
Sean Darcy

Files:

 driver.m: 
 driver script, will run all functions discussed below and plot the drag data and residuals.

 leastSquares.m:
 function that performs the normal equation to curve fit the data using the least squares method. No normalisation of data is performed in this function, this is opposed to the Polyfit function provided by default library in matlab. You would achieve better numerical properties if a standardised value was used for the data because the larger numbers start to dominate the results vs the smaller figures. You can see this in the residuals plot where the right side of the plot has high
 variance vs the left side of the plot (Higher numbers affecting more). This is also likely the cause of the high condition numbers for both the linear and quadratic curve fitting. If the data contains figures that are orders of magnitude different then the results will be significantly biased to fitting the larger numbers (ie the if the variance is 10 for both 1 and 1,000,000 we can see that they will contribute equally to the least squares calculation, however a variance of 10 is 1000%
 for 1 where it is 0.001% for a million, in this case we would appreciate if the algorithm corrected the 1000% variance more than the 0.001% variance). Normalising would address this

 vecplot.m:
 loads the data from the file, graphs the data, returns vectors for use

