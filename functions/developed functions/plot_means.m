function plot_means(Solar_Cell, variables, labels)
% Function to plot mean of DataFrame columns
% This function allows you to en dataframe, calcter aulate the average 
% of the electrical variables and display them in bar graphs.
%
% Solar_Cell: It is the DataFrame to calculate the mean
% variables: It allows to define the columns that will be used to calculate
% the mean.
% labels: It describes the electrical variable name and the units used to
% plot

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