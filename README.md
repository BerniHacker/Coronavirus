# Coronavirus COVID-19 Cases in Finland

There are a few good dashboards in the Web about to this topic (for example, by Johns Hokpins University and by Tableau). In addition, there is a good site with latest information about Finland broken down by Region. Still, it might be beneficial to manipulate the data in order, for example, to compare Finnish curves with curves from other Countries.

Having updated plots is very useful both for authorities and for the population in order to make fact-based decisions that help to contain the positive cases so not to overload the hospitals and therefore minimizing the casualties.

Comparing Finnish curves to those of neighboring Countries might provide useful insights since, in addition to the geographical proximity, those Countries have certain similarities in culture, behavior patterns and may be genetics.

_Currently, those files are updated daily around 06:00 - 08:00 UTC. Also, more plots will be added in the future._

**If you are not interested in the code used to produce the plots, open the file in this [link](http://htmlpreview.github.io/?https://github.com/BerniHacker/Coronavirus/blob/master/Coronavirus_Finland.html), go to section 6 and onward and focus on the plots, the tables and the plain text. Read also the disclaimers in section 1.**

---

## 1. Content of the repository

File name / Description | link
:---|:---
<code>Coronavirus_Finland.html</code> This file is the html version of the file below. | http://htmlpreview.github.io/?https://github.com/BerniHacker/Coronavirus/blob/master/Coronavirus_Finland.html
<code>Coronavirus_Finland.ipynb</code> This file contains visualizations realated to the spread of Coronavirus in Finland. All the code used to dump, complete, prepare and visualize the data in included. | https://github.com/BerniHacker/Coronavirus/blob/master/Coronavirus_Finland.ipynb
<code>automat.sh</code> This is a shell script to automatize the data pipeline. | https://github.com/BerniHacker/Coronavirus/blob/master/automat.sh
<code>Legal.txt</code> Legal note. | https://github.com/BerniHacker/Coronavirus/blob/master/Legal.txt

## 2. How to install the data pipeline

Download this repository "Coronavirus" into a dedicated directory in your environment.

### 2.1. Directory structure

The following directory shall be created under the directory containing this notebook:

- JHU_COVID-19

### 2.2. Initiate a Git repository for the source data and download the source repository

$ git init<br></br>
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
