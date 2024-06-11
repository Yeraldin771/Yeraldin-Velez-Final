```batch
## General information

In the solar energy sector, perovskite solar cells stand out for their efficiency and low manufacturing costs, making them a promising option for next-generation photovoltaic technologies. However, to maximize their potential and ensure commercial viability, it is important to understand and optimize key parameters such as short-circuit current density (Jsc), open-circuit voltage (Voc) and perovskite cell efficiency (PCE).

Statistical analysis using the mean and standard deviation of these parameters plays a key role in optimizing designs, increasing PCE and finding the optimum thickness or bandgap points.


## Figures


### Mean:

The mean of the electrical variables allows an overall analysis of the performance of the cell and quantitatively determine which of them performs better, absorbs more energy and therefore generates the highest efficiency.

- **Mean of Jsc.png:** The current density presented values for the mean, where it is evident that the highest values were obtained for cell 2, which means that the cell was able to capture more sunlight and generate more current per unit area. It is important to analyze the average energy efficiency to confirm if the best performance is presented by cell 2.

- **Mean of Voc.png:** The mean of Voc for the three cells presents very similar values, this is because the voltage applied by simulation was from 0V to 1.2V and this value is not influenced by the materials or structure implemented, but by the range applied. In summary, evaluating the performance of perovskite solar cells is not very useful by analyzing the applied voltage through simulation.

- **Mean of PCE.png:** Although the difference between the average of cell 1 and cell 2 is only 0.4%, it can be stated that among the 3 structures designed, cell 2 is the one with the best performance, not only because its efficiency is higher, but also because it achieves higher current values than the other two cells. This statistical analysis turns out to be very useful to evaluate which cell allows a better performance and, consequently, which thicknesses have a direct influence. Energy efficiency is one of the most important performance parameters for solar cells, so in the previous code the average PCE is obtained for the 3 cells to be analyzed and it is observed that the cell with the highest average value was cell number 2. Additionally, it can be said that this cell presents better performance than the other two, which is of vital importance for the research being carried out.


### Standard deviation:

The standard deviation allows quantifying the dispersion of the data around the mean or the variability of the data. For the development of perovskite solar cells it is very useful to understand the variation of energy efficiency or current density with increasing thickness of the layers that compose the structure.

- **Standard deviation of Jsc:** The standard deviation for Jsc shows a very high value for cell 2, this indicates that the variation of thicknesses for the above mentioned cell generates an increase in current density with higher dispersion in the resulting values. This makes a lot of sense, as the current density for cell 2 increases significantly with increasing layer size, this measure proves to be very useful to evaluate which cell is more affected by the thickness variation. 

- **Standard deviation of Voc:** The standard deviation for Voc is very small, this is because the open circuit voltage values for the three cells change between 1.1V and 1.2V and confirming that the variation and dispersion of data is very small and the applied voltage is the same for all three simulations. It occurs because the results obtained by simulation, in experimental setups this does not occur, because the variations in sunlight due to the movement of the sun, increased surface temperature in the cell and losses due to cloudiness generate statistically significant variations between the different cells.

- **Standard deviation of PCE:** As in the graph for the standard deviation of Jsc, the deviation for PCE is noticeably higher in cell 2 compared to cells 1 and 3. This is because the maximum and minimum values of efficiency change strongly with increasing efficiency. It can be inferred from this result that cell 2 is more affected by the variation of thickness size and that a high value of standard deviation indicates that one cell may perform better than the others.

In conclusion, the analysis of the standard deviation using bar charts is very useful to determine the cell with the highest growth in energy efficiency.


### Separability using mean and Box and Whisker Chart

**Box and whisker chart:** The separability analysis using the box and whisker plot allows us to analyze the behavior of the data for each cell. For cell 1, it is observed that there are some outliers and that the energy efficiency only increases from 12% to 17% approximately, which indicates that the efficiency only increases by 5% when having a thickness from 50nm to 1000nm. For cell 2, the efficiency has an increase from 6% to approximately 25%, which represents an increase of 19% when varying the thickness. This indicates that the simulated design is sensitive to thickness changes and that its efficiency increases significantly with increasing layer size. Finally, cell 3 also shows an efficiency increase of only 4%, so it is not as susceptible to increase its efficiency when the cell thickness increases.

## Analysis of thickness vs PCE


**Thickness vs PCE for Cell 1:** For the thickness vs PCE graph of cell 1, it can be seen that the energy efficiency value starts at approximately 12.5% when the cell thickness is 50 nm and the energy efficiency begins to describe a behavior with a negligible increase from a value of 600 nm. In this case, the thickness of 600 nm can be defined as a design parameter in which an acceptable efficiency is achieved and the use of materials is reduced, since the increase in efficiency does not represent a considerable benefit in the conversion of sunlight into energy.

**Thickness vs PCE for Cell 2:** The graph in cell 2 describes an ascending behavior with increasing thickness. Unlike cell 1, this structure describes an almost linear increase and it can be thought that if the range of variation for the thickness is expanded, efficiencies greater than 25% can be obtained. Furthermore, this cell is the one with the greatest increase in PCE, which generated an initial value of 6% for a thickness of 50 nm and a final energy efficiency of 24.5% with a thickness of 1000 nm. Therefore, a future analysis of this prototype with a thickness between 50 nm and 2000 nm is proposed to verify the peak PCE value.

**Thickness vs PCE for Cell 3:** Cell 3 presents a behavior similar to that obtained for cell 1, since the PCE value varies between 10.5% and 14.7% and begins to stabilize from 600 nm. In this case, you can also define this thickness value as a design parameter and thus avoid the use of material. This turns out to be very useful, since some materials used in the manufacture of perovskite solar cells have a high cost, such as Gold or Spiro-OMETAD.

In conclusion, the statistical analysis using the data generated through numerical simulation allows us to determine which of the designed devices have the best performance and fixed design parameters can be easily obtained, avoiding the waste of high-cost materials and preserving ultra-thin cells, a characteristic that attracts great interest from the scientific community.

```
