## Statistical analysis of simulated perovskite solar cell data and its performance with varying perovskite layer thickness
**Yeraldin Alejandra Velez Galvis**

*Master's student in automation and industrial control*

*Final lab for the subject of Scientific Programming*


### *Abstract:*

Therefore, this master work focuses on the development of a comprehensive computational methodology for the modeling of perovskite solar cells, making use of numerical modeling tools such as COMSOL Multiphysics and/or SCAPS 1D. The main objective is to understand and optimize the optoelectronic properties of these cells by analyzing various factors, such as the combination of materials, the number and order of layers, as well as the structural morphology. In addition, it is proposed to implement at least one tool based on machine learning techniques, aimed at predicting the behavior of perovskite solar cells. This will include the prediction of crucial parameters, such as energy conversion efficiency. It is expected that these tools will not only facilitate the design and optimization process, but also contribute to reducing the costs associated with the fabrication of these cells.


## Introduction:

In recent years, the urgency to adopt renewable energy sources has increased significantly due to the rapid climate change our planet is experiencing, driven by the exponential growth in greenhouse gas emissions from the use of fossil fuels. This need has become a major global concern, as it seeks to ensure a sustainable energy supply and reduce the environmental impact of fossil fuel-based technologies.

As a result, the development, optimization and improvement of renewable energy generation systems have become key challenges for the scientific community. Solar energy, in particular, has experienced remarkable growth in this context. However, the most common commercial solar panels (such as monocrystalline or polycrystalline silicon panels) fail to capture much of the solar energy and achieve an energy efficiency between 15% and 20%, which means that a significant part of the solar energy is not fully harnessed. In addition, these panels have design limitations due to their mechanical stiffness and high weight. 
 
In contrast, perovskite solar cells have attracted considerable interest in recent years due to their remarkable increase in energy efficiency. Reaching 26.1% in commercial prototypes and a maximum of 37.5% in laboratory tests, these cells promise to be potential candidates for commercial production of the next generation of solar cells. Their adoption could significantly reduce electricity costs and simplify manufacturing processes. Hence, being able to generate computational methodologies that allow modeling, optimizing and predicting the optoelectronic characteristics of these cells is key to reducing the costs of this technology, especially considering that manufacturing techniques sometimes require the use of expensive reagents and clean rooms. It is then when being able to optimize the combination of materials and adjust the structural dimensions of the same from simulations plays a crucial role in driving the development of perovskite solar cells. In addition, the emergence of artificial intelligence techniques offers an innovative perspective in this field. These techniques can be effective in predicting the performance of solar cells, giving researchers a valuable tool to improve their efficiency and stability. This is especially important considering that the key parameters of these cells are critical to their performance. 

Taking into account the importance and relevance of developing perovskite solar cells, in this work an analysis of three cells with three different materials for the perovskite layer is developed. However, the algorithms and functions can be used to analyze a larger number of cells. It is important to clarify that all the data were obtained by computational simulation using COMSOL Multiphysics and Matlab.


## Metodology

Analysis of the behavior of three perovskite solar cells simulated in COMSOL Multiphysicals when the thickness of the absorber layer varies from 50 nm to 1000 nm and its effect on the short-circuit current density (Jsc) and open circuit voltage (Voc). and power conversion efficiency (PCE), a structured method is used:

- **Model configuration:** Three different perovskite solar cell models were configured in COMSOL Multiphysics using MAPbI3, FAPbI3 and MASnI3 ensuring that all parameters except the thickness of the absorber layer were kept constant.
This allows a direct comparison of the effect of thickness on the properties of each cell.

- **Thickness variation:** For each model, the cell performance is simulated by varying the thickness of the absorber or perovskite layer in the range of 50 nm to 1000 nm. Steps of 10 nm were configured to obtain sufficient data for detailed analysis.

- **Simulation and data collection:** Simulations are run for each thickness configuration, using the COMSOL - Matlab connection. Jsc, Voc and PCE values are collected for each simulation using the commands available in [1] based on OOP and the structure defined for the simulations.

- **Data analysis:** The data obtained are analyzed in the folder named “results” to determine how the change in layer thickness affects each parameter. Graphs are used to visualize the trends and the separability of the data, where it is concluded that within the three structures studied, cell 2 was the one that presented the best performance. Being the cell with MAPbI3 the one that allows to obtain a higher PCE, as shown by the studies published in different scientific journals [2-6].

This methodological approach allowed a clear and detailed understanding of the impact of absorber layer thickness on the key characteristics of perovskite solar cells, providing a solid basis for future research and development in the design of these cells. 

## How to run the proyect?

In order to perform a statistical analysis of the data and to make use of the functions, the following steps must be followed:

1. First you must download the project, if you have git downloaded on your computer. You must open the path where you want to save the repository and execute the following code:

```matlab
git clone https://github.com/Yeraldin771/Yeraldin-Velez-Final.git
```

2. You must open the file “example.m” from Matlab, make sure it is located in the folder that contains the project folders.

3. Run the “example.m” file from your computer. There you will see an example of how to load the data into the workspace, how to use the functions described in the “functions” folder and an example of how to load and visualize the images contained in the “results” folder.

> IMPORTANT: Once you complete the previous steps, you will be able to visualize in the Command Window the work path in which you are located and the mean square root values for an electrical variable for each of the cells. Additionally, you can visualize the graphs generated by the developed functions and finally an example of how to load from Matlab the images contained in the results folder, where as its name indicates the graphs generated by the statistical analysis and separability of the three analyzed cells are stored.


## Conclusions

In this project, an analysis on the variation of absorber layer thickness in three perovskite solar cells, which ranged from `50 nm` to `1000 nm`, has provided valuable insights on how design optimization can significantly influence the efficiency of solar cells. Of the three cells studied, Cell 2 demonstrated superior performance in terms of short-circuit current density (Jsc) and power conversion efficiency (PCE), standing out as the most efficient under a specific range of layer thicknesses. This finding highlights the importance of applying statistical data analysis methods to not only identify trends and optimal behaviors of the cells under study, but also to confirm the reproducibility and statistical significance of the results obtained. Quantitative analysis provides a solid basis for informed decision making and the development of optimization strategies that can be crucial for the effective commercialization of perovskite-based technologies. These methods also allow the design of more targeted and efficient future experiments, thus enhancing the search for optimal configurations in solar cell manufacturing.


## References

[1] Run COMSOL Multiphysics® Simulations with MATLAB®. Available on: https://www.comsol.com/livelink-for-matlab.
[2] Minbashi, M., & Yazdani, E. (2022). Comprehensive study of anomalous hysteresis behavior in perovskite-based solar cells. Scientific Reports, 12(1). https://doi.org/10.1038/s41598-022-19194-5
[3] Ouslimane, T., Et-taya, L., Elmaimouni, L., & Benami, A. (2021). Impact of absorber layer thickness, defect density, and operating temperature on the performance of MAPbI3 solar cells based on ZnO electron transporting material. Heliyon, 7(3), e06379. https://doi.org/10.1016/j.heliyon.2021.e06379
[4] Vélez, J., Sepúlveda, F., Botero, M., Otalora, C., & Camacho, C. (2023). Absorber layer thickness as a new feature in statistical learning tools of Perovskite solar cells. Journal of Applied Research and Technology, 21, 858–865. https://doi.org/10.22201/ICAT.24486736E.2023.21.5.2057
[5] Vivek B., Praveen K., Deepak B., Shashi K., Michał J., Radomir G., Zbigniew L. (2023). Numerical Investigation of Power Conversion Efficiency of Sustainable Perovskite Solar Cells. Electronics, 12, 1762. http://dx.doi.org/10.3390/electronics12081762
[6] Montoya, I., Cortina, H., Ruíz, M., Hechavarría, L., Sánchez, F., Courel, M., & Hu, H. (2020). Optimization of CH3NH3PbI3 perovskite solar cells: A theoretical and experimental study. Solar Energy, 199, 198-205.
http://dx.doi.org/10.1016/j.solener.2020.02.026
