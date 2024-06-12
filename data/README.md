# General information:

This folder contains the data obtained from the simulation of perovskite solar cells in the COMSOL Multiphysics software. 

## Contextualization

In the development of perovskite solar cells, three parameters are essential to evaluate and optimize their performance: short circuit current density (Jsc), open circuit voltage (Voc) and perovskite cell efficency (PCE). Understanding how each of these factors is affected by changes in perovskite layer thickness is crucial to the development of more efficient and economical cells.

- **Short-circuit current density (Jsc):** This parameter measures the maximum current that a solar cell can generate when exposed to sunlight and shorted. In perovskite cells, Jsc is directly influenced by the material's ability to absorb light and convert photon energy into electrical energy. The thickness of the perovskite layer can modify light absorption; an insufficient thickness may not absorb light efficiently, while an excessively thick one may increase the recombination of charge carriers before they can contribute to the electric current.

- **Open circuit voltage (Voc):** This parameter represents the maximum voltage that the solar cell can reach when there is no load or the circuit is closed.
Voc depends on the quality of the semiconductor material and its ability to separate and retain individual charge carriers. Increasing the thickness of the perovskite layer will improve the quality of the material by reducing defects and discontinuities, which can lead to an increase in Voc up to an optimal value, after which it may start to decrease due to increased recombination in the thicker layer.

- **Power Conversion Efficiency (PCE):** The efficiency with which a solar cell converts solar energy into electricity is perhaps the most comprehensive measure of its performance.
This performance is affected by both Jsc and Voc, as well as by duty cycle, which is a measure of the “shape” of the cell's I-V curve. The thickness of the perovskite layer affects all of these components; optimal thickness balance is important to maximize PCE because insufficient thickness can affect light absorption, charge separation, and minimize recombination losses.

Therefore, an important research topic is the behavior of perovskite solar cells in response to changes in perovskite layer thickness. Adjusting this parameter can significantly improve light capture and conversion efficiency, but it must be carefully controlled to avoid increasing the recombination rate or introducing structural defects. This ongoing research is focused on studying this important design parameter to understand how it affects the three electrical parameters mentioned above. 


## Perovskite solar cell structure

Top electrode/Electron transport layer/Perovskite layer/Hole transport layer/Bottom electrode.

<div align="center">
<img width="234" alt="image" src="https://github.com/Yeraldin771/Yeraldin-Velez-Final/assets/54337606/3c6c767c-7a3f-41ef-8b8c-cf82f9e16ff5">
</div>

For the six-layer materials `FTO/TiO2/FAPbI3/Spiro-OMETAD/Au` for cell 1, `FTO/SnO2/MAPbI3/Spiro-OMETAD/Au` for cell 2 and `FTO/SnO2/MASnI3/Spiro-OMETAD/Au` for cell 3. In addition, the open circuit voltage ($Voc$), short circuit current density ($Jsc$) and perovskite cell efficiency ($PCE$) are obtained for each thickness value in the range of 50 to 1000 nm, with steps of 10 nm for the perovskite layer of the three cells. A total of 96 thicknesses are evaluated, the values and steps are the same for all 3 cells.


## Methodology to get data

These data correspond to three simulations of perovskite solar cells with the nip-type structure and the materials used for the simulations are described below, the order of the layers being as follows: 

1. First, The design of a perovskite solar cell is performed in COMSOL using the semiconductor module, to analyze the electrical behavior of the device when applying a voltage from 0 to 1.2 V and an excitation by defining an electron-hole pair generation value. All this generates a J-V curve, which is used to obtain Jsc and Voc, allowing to calculate the energy efficiency of the cell.

2. Once the simulation is finished and it is determined that the delivered values are adequate, a matlab code is designed to obtain and store the data generated from the COMSOL simulation, this is achieved using the COMSOL-Matlab connection and using the object oriented programming commands available in [1]. This allows to have .mat arrays with the necessary data to analyze the behavior of PCE by varying the thickness of the cells.

3. Finally when the data are obtained, they must be saved in .mat files to preserve the information generated. Otherwise the data contained in the workspace will be lost. This step is of vital importance for the analysis of results.


## Data details:

There is a .mat file for the three electrical variables obtained by varying the thickness in each of the cells. The variables are perovskite layer thickness, short circuit current density (Jsc), open circuit voltage (Voc) and perovskite cell efficiency (PCE). The variables contained in each file, the data types, and the dimensions are described below:

>[!NOTE: The description of these electrical variables is given in the README file describing the project].

  
- The name of the file defines the type of electrical variable it contains and the cell to which the measurement belongs. For example: VariableName_CellNumber.mat, if you want to analyze the energy efficiency of cell 1, you must search for the file PCE_Cell1.mat and so on. It contains data type "double". 

- As the variation in layer thickness is the same for all three cells, only the thickness_Cell1 file is provided as a reference for data analysis and visualization. It contains data type "double".

- The unit value of `Jsc` is `mA/cm^2`, for the `Voc` is `V`, for PCE is `%` and for thickness is `nm`.

- The DataFrame.mat file contains the array with the thickness and all the electrical variables for the three cells concatenated in a MATLAB table-type structure. It is a table with 10 columns and 96 rows. In the next table, the first 5 rows of the DataFrame were shown.

| Thickness |      Jsc_Cell1      |      Jsc_Cell2      |      Jsc_Cell3      | Voc_Cell1 | Voc_Cell2 | Voc_Cell3 |      PCE_Cell1      |      PCE_Cell2      |     PCE_Cell3     |
|------|----------------|----------------|----------------|------|------|------|----------------|----------------|---------------|
|  50  | 19.94022519724 | 8.21952598879  | 16.85284049206 | 1.13 | 1.18 | 1.12 | 12.56372166270 | 6.09742104867  | 10.54211388603|
|  60  | 20.17515626908 | 8.66604420836  | 17.08753905660 | 1.13 | 1.17 | 1.12 | 12.72647365773 | 6.38718580077  | 10.69438351302|
|  70  | 20.40781453305 | 9.11736304688  | 17.31846930643 | 1.13 | 1.17 | 1.12 | 12.88679220048 | 6.67161772282  | 10.84603525199|
|  80  | 20.63610144172 | 9.57263397499  | 17.54707134008 | 1.14 | 1.16 | 1.12 | 13.04543946769 | 6.95249176526  | 10.99537456081|
|  90  | 20.86185236264 | 10.03191884155 | 17.77146930197 | 1.14 | 1.16 | 1.12 | 13.20127519418 | 7.22929013676  | 11.14307464060|


## References.
[1] Run COMSOL Multiphysics® Simulations with MATLAB®. Available on: https://www.comsol.com/livelink-for-matlab
