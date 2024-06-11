function plot_standard_deviation(Solar_Cell, variables, labels)
% Function to plot the standard deviation of DataFrame columns.
% 
% This function allows you to enter a dataframe, calculate the 
% standard deviation of the electrical variables and display 
% them in bar graphs using POO based on the commands std and bar
% of Matlab.
%
% Solar_Cell: Enter a DataFrame to calculate the standard deviation.
% variables: Enter the columns os the DataFrame that will be used to calculate
% the mean.
% labels: Enter the electrical variable name and the units used to
% plot the mean.
%
% For example: plot_standard_deviation(DataFrame, {8:10}, {'PCE [%]'})

    % Calcular la desviación estándar de las variables seleccionadas
    Cells_Number = [1,2,3];
    
    % Iterar sobre las variables a graficar
    for i = 1:length(variables)
        % Obtener los datos de la desviación estándar de la variable actual
        S = std(table2array(Solar_Cell(:, variables{i})));
        
        % Crear la gráfica de barras
        figure;
        SD = bar(Cells_Number, S);
        
        % Añadir etiquetas a las barras
        x_label = SD.XEndPoints;
        y_label = SD.YEndPoints;
        labels1 = string(SD.YData);
        text(x_label, y_label, labels1, 'HorizontalAlignment', 'center', ...
            'VerticalAlignment', 'bottom');
        
        % Añadir etiquetas y título a la gráfica
        ylabel(['Standard deviation for ', labels{i}]);
        xlabel('Cell sample');
        title(['Cell sample vs Standard deviation for ', labels{i}]);
    end
end