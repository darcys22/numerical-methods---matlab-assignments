function [vd,dd]=vecplot(fname)
  % function to extract the aircraft drag data from provided file
  % will graph the drag against the velocity 
  % will return the velocity and velocity in separate vectors
  %
  % Syntax    [vd,dd]=vecplot(fname)
  %
  % Inputs:
  %   fname - the filename as a string of the .mat file containing velocity and drag data
  %
  % Outputs:
  %   vd - vector of the velocity data
  %   dd - vector of the drag data
  % 
  % Written by S Darcy

  % Close any open figures
  close all;

  d=load(fname);
  dd = d.Dnew;
  vd = d.vnew;

  %Vertical axis (y) against / versus Horizontal axis (x).

  plot(vd, dd), grid on; hold on;
  title('Plotting Drag against Velocity')
  xlabel('air velocity (v in metres per second)') 
  ylabel('drag force (D in Newtons)') 

end
