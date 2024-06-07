** General information

This folder contains the data necessary to run the .mlx scripts obtained from the simulation of perovskite solar cells in the COMSOL Multiphysics software.

These data correspond to three simulations of perovskite solar cells with the structure for the materials of the layers FTO/TiO2/FAPbI3/Spiro-OMETAD/Au for cell 1, FTO/SnO2/MAPbI3/Spiro-OMETAD/Au for cell 2 and FTO/SnO2/MASnI3/Spiro-OMETAD/Au for cell 3. In addition, the open circuit voltage (Voc), the short circuit current density (Jsc) and the pervoskite cell efficiency (PCE) are obtained for each thickness value in the range of 50 to 1000 nm, with steps of 10 nm for the perovskite layer of the three cells. A total of 96 thicknesses are evaluated, the values ​​and steps are the same for the 3 cells



** Folders:

-- raw: This folder contains the arrays and DataFrame needed to run the .mlx 	script called Lab2_Yeraldin_Velez. The variables contained in each file, the 	data types and the dimensions are described below.

	- The name of the file defines the type of electrical variable it 	contains and the cell to which the measurement belongs. For example: 	VariableName_CellNumber.mat
	If you want to analyze the energy efficiency of cell 1, you must search for 	the file PCE_Cell1.mat and so on.
	Contains data type double
	
	- As the variation in layer thickness is the same for all three cells, only 	the 	thickness_Cell1 file is provided as a reference for data analysis and 	visualization. Contains data type double.

	- The DataFrame.mat file contains the array with the thickness and all the 	electrical variables for the three cells concatenated in a Matlab table-type 	structure.

-- processed: Contains the normalized DataFrame.mat table values and data type is table.

