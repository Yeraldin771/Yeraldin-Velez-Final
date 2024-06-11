clc
clear all

% Load repository
repo = gitclone("https://github.com/Yeraldin771/Yeraldin-Velez-Final.git");


% Load work route
disp('Your work path is: ')
pwd

% Create route of work with the proyect folder and get DataFrame
% information
ruta_df = fullfile(pwd, 'Yeraldin-Velez-Final', 'data', 'raw','DataFrame.mat');
load(ruta_df);

% Import the functions path 
ruta_funciones = fullfile(pwd, 'Yeraldin-Velez-Final', 'functions');
addpath(ruta_funciones)

% calculate rms of PCE
disp('The value the root medium square or RMS for Cell 1, Cell 2 and Cell 3 is, respectively:')
RMS_PCE = calculate_RMS(Solar_Cell)

% Plot the thickness vs PCE
espesor = table2array(Solar_Cell(:,1));
PCE2 = table2array(Solar_Cell(:,9));
plot_cell(espesor, PCE2, 2)

% plot mean for PCE
plot_means(Solar_Cell, {8:10}, {'PCE [%]'})

% Plot standard deviation of PCE
plot_standard_deviation(Solar_Cell, {8:10}, {'PCE [%]'})

% Load the box and whisker chart 

ruta_imagen = fullfile(pwd, 'Yeraldin-Velez-Final', 'results', 'Box and whisker chart.png');

BandW = imread(ruta_imagen);
imshow(BandW)







