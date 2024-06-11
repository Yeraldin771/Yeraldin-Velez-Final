function plot_means(Solar_Cell, variables, labels)
% Function to plot mean of DataFrame columns.
%
% This function allows you to enter a DataFrame, calculate the mean 
% of the electrical variables and display them in bar graphs using the
% commands mean and bar of Matlab.
%
% Solar_Cell: Enter the DataFrame to calculate the mean
% variables: Enter the columns range that will be used to calculate
% the mean.
% labels: Enter the electrical variable name and the units used to
% plot
%
% For example: plot_mean(DataFrame, {2:4}, {'Jsc [mA/cm^2]'})

    Mean = mean(Solar_Cell);

    % Cell number
    Cells_Number = [1,2,3];

    % Iterate on the variables to be plotted
    for i = 1:length(variables)
        % Get info of current variable
        var_data = table2array(Mean(:, variables{i}));

        % Create bar plot
        figure;
        b = bar(Cells_Number, var_data);

        % Add lables
        x_label = b.XEndPoints;
        y_label = b.YEndPoints;
        labels1 = string(b.YData);
        text(x_label, y_label, labels1, 'HorizontalAlignment', 'center', ...
            'VerticalAlignment', 'bottom');

        % Add legends
        ylabel(['Mean of ', labels{i}]);
        xlabel('Cell sample');
        title(['Cell sample vs Mean of ', labels{i}]);
    end
end