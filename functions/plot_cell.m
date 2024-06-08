function plot_cell(thickness, PCE, cell_num)
% Plot thickness versus energy efficiency (PCE) 
% This function generates a graph of cell thickness 
% versus efficiency with labels and title. 
% 
% Inputs: 
% thickness: Array with the thickness variation range. 
% PCE: Array with the PCE got by simulation. 
% cell_num: Represents the number that identifies the cell to be evaluated.
% Note: Both, the thickness and the PCE must have the same dimensions.

    % Plotting efficiency vs thickness for a specific cell
    plot(thickness, PCE)
    ylabel(['PCE of Cell ' num2str(cell_num) ' [%]'])
    xlabel(['Thickness of Cell ' num2str(cell_num) ' [nm]'])
    title(['Variation of thickness vs PCE of Cell ' num2str(cell_num)])
end