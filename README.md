## Scripts to generate 4 different plots

In this assignment four R scripts were created, for the purpose to generate some plots, using data from the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine Learning Repository</a>, specifically the "Individual household
electric power consumption Data Set". This dataset can be accessed through the coursera Exploratory data analysis course webpage. (Below is a description of the data and the tasks to be performed, taken from the original README file of the GitHub repository:
[https://github.com/rdpeng/ExData_Plotting1](https://github.com/rdpeng/ExData_Plotting1)

* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Loading the data

The scripts, read the data with the approapiate, separation key, and missing value character. Then subsets, for data of 2007-02-01 and 2007-02-02. It converts the date and time to an appropiate date/time class R object.

## Making Plots

The overall goal was to examine how household energy usage varies over a 2-day period in February of 2007. 

The data sets are then used with the base plotting system of R, to generate PNG plots with a width of 480
pixels and height of 480 pixels, as instructed and named `plot1.png`, `plot2.png`, `plot3.png`, `plot4.png`. Each accompanied with an R script named `plot1.R`, `plot2.R`, `plot3.R`, `plot4.R`, which are the scripts that can generate the corresponding graphs.

Lastly, the scripts as well as the graphs have been pushed to the this forked repository.

The four plots that that need to be constructed are shown below. 


### Plot 1


![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 


### Plot 2

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 


### Plot 3

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 


### Plot 4

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.png) 

