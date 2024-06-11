function [RMS_Jsc, RMS_Voc, RMS_PCE] = calculate_RMS(Solar_Cell)
% This function allows to calculate root mean square (RMS) of electrical values.
%
% This function allows to enter a DataFrame and calculate the RMS for 
% each parameter of the table using the command RMS of Matlab.
%
% Solar_Cell: Input the DataFrame or Array to calculate the RMS.
%
% Note: The DataFrame entered must be a data type table, the function
% change the data type automaticaly

    % Convertir la tabla a un arreglo
    Solar_Cell_Array = table2array(Solar_Cell);

    % Calcular el RMS para Jsc
    RMS_Jsc = rms(Solar_Cell_Array(:, 2:4));

    % Calcular el RMS para Voc
    RMS_Voc = rms(Solar_Cell_Array(:, 5:7));

    % Calcular el RMS para PCE
    RMS_PCE = rms(Solar_Cell_Array(:, 8:10));
end