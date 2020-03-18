# Coronavirus Cases in Finland

There are a lot of pages related to this topic in the Web but there was no free site that shows the daily cases in Finland with a reasonable delay.

Also, it migth be beneficial to compare Finnish curves with curves from other Countries.

**If you are not interested in the code used to produce the plots, open the file in this [link](http://htmlpreview.github.io/?https://github.com/BerniHacker/Coronavirus/blob/master/Coronavirus_Finland.html), go to section 6. and focus on the plots and their description.**

## 1. Content of the repository

File name / Description | link
:---|:---
<code>Coronavirus_Finland.html</code> This file is the html version of the file below. | http://htmlpreview.github.io/?https://github.com/BerniHacker/Coronavirus/blob/master/Coronavirus_Finland.html
<code>Coronavirus_Finland.ipynb</code> This file contains visualizations realated to the spread of Coronavirus in Finland. All the code used to dump, complete, prepare and visualize the data in included. | https://github.com/BerniHacker/Coronavirus/blob/master/Coronavirus_Finland.ipynb
<code>automat.sh</code> This is a shell script to automatize the data pipeline. | https://github.com/BerniHacker/Coronavirus/blob/master/automat.sh

## 2. How to install the data pipeline

Download this repository "Coronavirus" into a dedicated directory in your environment.

### 2.1. Directory structure

The following directory shall be created under the directory containing this notebook:

- JHU_COVID-19

### 2.2. Initiate a Git repository for the source data and download the source repository

$ git init
$ git clone https://github.com/CSSEGISandData/COVID-19

### 2.3. Modifications to the shell script

The file automat.sh shall be edited to change the path to your local directory

### 2.4. Required software:

- Jupyter Notebook
- Python
- numpy
- pandas
- matplotlib
- seaborn
- regex

## 3. Running the pipeline

In the Coronavirus directory:

$ ./automat.sh
