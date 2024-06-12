
## General information

This folder contains the developed functions used in data analysis to optimized the code or make it simpler.


## Functions

All the developed functions are applied using Matlab's own commands and making use of object-oriented programming, in order to generate an algorithm with less computational expense that optimizes the computer resources, that allows to automate the data analysis when a considerable number of cells are evaluated and to have more compact and simple to understand algorithms. 

In addition, a simple to understand code is generated for people outside the development of the project but who wish to use the tools developed for research purposes. Generating an enjoyable dynamic of collaborative work. 


A brief description of the use and purpose of each function is presented:

- **plot_cell.m:** This function generates a graph of cell thickness versus efficiency automatically. It uses the commands and functions of Matlab called plot, ylabel, xlabel and title. Go to the function documentation for more details.
    
- **plot_means.m:** Calculate the mean of the DataFrame and plot it using a bar plot per each electrical variable and putting the label in function of the variables, it shows three diferent figures. It uses the commands and functions of Matlab called table2array, mean, bar, XEndPoints, YEndPoints, xlabel, ylabel, text and title. Go to the function documentation for more details.
    
- **plot_standar_deviation.m:** Calculate the standard deviation of the DataFrame and plot it using a bar plot per each electrical variable and putting the label in function of the variables generating three different figures. It uses commands and funcionts of Matlab called std, barXEndPoints, YEndPoints, xlabel, ylabel, text and title. Go to the function documentation for more details.

- **calculate _RMS.m:** Calculate the root mediam square of the DataFrame per each electrical variable. The root mean square root, or RMS, is calculated by taking the square root of the square of the values in the data set.  It uses commands and funcionts of Matlab called RMS and table2array, because to calculate the rms, numerical values must be entered. Matlab internally applies the formula shown below to calculate it. However in this function we make use of POO for practicality:

$$
\text{RMS} = \sqrt{\frac{1}{n} \sum_{i=1}^n x_i^2}
$$

   Go to the function documentation for more details.

>Note: It is recommended to review the documentation of the functions to know the input attributes and their mechanism of use in the function.
