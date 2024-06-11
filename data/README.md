# General information:

This folder contains the data obtained from the simulation of perovskite solar cells in the COMSOL Multiphysics software. 

## Methodology:

1. First, The design of a perovskite solar cell is performed in COMSOL using the semiconductor module, to analyze the electrical behavior of the device when applying a voltage from 0 to 1.2 V and an excitation by defining an electron-hole pair generation value. All this generates a J-V curve, which is used to obtain Jsc and Voc, allowing to calculate the energy efficiency of the cell.

2. Once the simulation is finished and it is determined that the delivered values are adequate, a matlab code is designed to obtain and store the data generated from the COMSOL simulation, this is achieved using the COMSOL-Matlab connection and using the object oriented programming commands available in [1]. This allows to have .mat arrays with the necessary data to analyze the behavior of PCE by varying the thickness of the cells.

3. Finally when the data are obtained, they must be saved in .mat files to preserve the information generated. Otherwise the data contained in the workspace will be lost. This step is of vital importance for the analysis of results.


## Data details:

There is a .mat file for the three electrical variables obtained by varying the thickness in each of the cells. The variables are perovskite layer thickness, short circuit current density (Jsc), open circuit voltage (Voc) and perovskite cell efficiency (PCE). The variables contained in each file, the data types, and the dimensions are described below:

>[!NOTE: The description of these electrical variables is given in the README file describing the project].

  
- The name of the file defines the type of electrical variable it contains and the cell to which the measurement belongs. For example: VariableName_CellNumber.mat, if you want to analyze the energy efficiency of cell 1, you must search for the file PCE_Cell1.mat and so on. It contains data type "double". 

- As the variation in layer thickness is the same for all three cells, only the thickness_Cell1 file is provided as a reference for data analysis and visualization. It contains data type "double".

- The unit value of `Jsc` is `mA/cm^2`, for the `Voc` is `V`, for PCE is `%` and for thickness is `nm`.

- The DataFrame.mat file contains the array with the thickness and all the electrical variables for the three cells concatenated in a MATLAB table-type structure. It is a table with 10 columns and 96 rows.

  > For more details go to the README of the proyect.

## References.
[1] Run COMSOL Multiphysics® Simulations with MATLAB®. Available on: https://www.comsol.com/livelink-for-matlab
