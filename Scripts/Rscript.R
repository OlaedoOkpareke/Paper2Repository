#### Preamble ####
# Purpose: Load the data from the data section of "The Puzzle of Falling US Birth Rates since the Great Recession", from  the American Economic Journal 
# Author: Olaedo Okpareke, Arsh Lakhanpal,Swarnadeep Chattopadhyay
# Data: 25 February 2022
# Contact: olaedo.okpareke@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# - Need to have installed the tidyverse, haven and tidyr packages. 



#### Workspace setup ####

library(haven)
library(tidyverse)

# Reading in the data.
birth = read_csv("Inputs/Data/fig_1.csv")
numbirth = read_csv("Inputs/Data/numbirths_2001_2019.csv")
student_debt = read_dta("Inputs/Data/nyfed-student-debt-per-capita-0419.dta")
rent = read_dta("Inputs/Data/longdiff-rentcost-0419.dta")
religion = read_dta("Inputs/Data/long-diff-religion.dta")
childcare = read_dta("Inputs/Data/child_care_costs_under12_0408_1519.dta")
birth2 = read_dta("Inputs/Data/age_race_comp_seer.dta")
birth1 = read_dta("Inputs/Data/nchs_births_pop_1990_2019.dta")
race = read_csv("Inputs/Data/figs_2a_2b.csv")
policy = read_dta("Inputs/Data/policyvars01_19.dta")

# create datasets from dta files
write_csv(birth, "Inputs/Data/birth.csv")
write_csv(numbirth, "Inputs/Data/numbirth.csv")
write_csv(race, "Inputs/Data/race.csv")
write_csv(policy, "Inputs/Data/policy.csv")
write_csv(student_debt, "Inputs/Data/student_debt.csv")
write_csv(rent, "Inputs/Data/rent.csv")
write_csv(religion, "Inputs/Data/religion.csv")
write_csv(childcare, "Inputs/Data/childcare.csv")
write_csv(birth2, "Inputs/Data/birth2.csv")
write_csv(birth1, "Inputs/Data/birth1.csv")
