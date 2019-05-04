function []=testcorrect(inputVec)
  % function to test over the provided input to ensure that frequency function is a root 
  %
  % Syntax    []=testcorrect(inputVec)
  %
  % Inputs:
  %   inputVec - vector of values to test 
  %
  % Outputs Nil
  % 
  % Written by S Darcy


  %Call the frequency function for all elements passed
  y = frequencyfunction(inputVec);

  %Iterate over the items, if they are within a tolerance of 0.001 then they are a root, else they are not. Simply writing the result to screen
  for idx = 1:numel(y)
    if abs(y(idx)) > 0.001
      disp("Element is not root"), disp(inputVec(idx))
    else
      disp("Element is a root"), disp(inputVec(idx))
  end

end
