# Paper2Repository

This repository can be found at https://github.com/OlaedoOkpareke/Paper2Repository.

First run the rscript file, this creates the datasets.  Then run the bib file for references and citations, then run the rmd file.

The repository is organised as follows:

1. The Outputs folder: 

The .bib file contains the citations for the raw data, packages and literature used in the report.

The rmd file contains the analysis report on US Birth rates from 2000 to 2020, as well as the code used to create the report. This code was mainly used to create tables and graphs.

The pdf file contains the same analysis report but in pdf form, and without the code.

2. The Inputs folder:

The dta files are the files downloaded from the original paper's data package. 
The csv files contains the converted csv datasets used in the report. 

3. The Scripts folder:

The r script contains code for downloading the data and converting them to csv form.

4. Main Code repository with data and paper folder:

This contains the reproduction package. The r script file within this package contains the code to load in the data, as well as the code to replicate the three graphs. 

Note: The original data folder was too large to be loaded into R studio properly, so for this analysis the relevant files were uploaded individually.

Abstract:

Birth rates provide useful information on population growth, and an above-replacement birth rate is indicative of stability. However, previous research has found that birth rates in industrialized societies such as the U.S have been decreasing in recent years. We use data from the American Economic Association to analyze this by using graphs and tables to observe the trend in birth rates of different demographics, using R [@citeR] and other packages. We also observe the trends behind changing economic and cultural factors that could affect the birth rates. We find that birth rates of young women of different races have been on a steep decline over the past 20 years, and factors that are known to decrease birth rates have increased. This report shows that the decline in birth rates are a symptom of cultural and economic changes between two generations of women. While this indicates that the U.S has gotten more culturally liberated, the declining birth rates shows the systemic effects of the worsening economy and increasing costs on the average american woman.