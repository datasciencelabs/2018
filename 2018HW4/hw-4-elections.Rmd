---
title: "Homework 4: Election Forecasting"
date: "Due: 11/18/2018"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

# How reliable is polling data?

Leading up to the 2016 presidential election, many pollsters predicted that the Democratic candidate, Hillary Clinton, would win a ["decisive victory."][wapo] However, as we all know, the election was won by the Republican candidate, and current president, Donald Trump. During class we discussed how general biases, not accounted for by prediction models, often affect many pollsters in the same way. In this homework, you are going to further investigate these biases through comparisons across both national and state-level races. 

The repository for this homework includes an **.RData** file, `election_polls.RData`, containing a `data.frame` (`polls`) with several years worth of polling data (2008, 2010, 2012, 2014 and 2016). The polls cover federal elections for house representatives, senators and the president, and includes polling data from up to a year before the election date. The Presidential election polls were collected from the [RealClearPolitics website][rcp] and the Congressional and Senatorial polls were collected from the [FiveThirtyEight Github repository][thirty]. 

```{r, warning=FALSE, message=FALSE}
library(tidyverse)
load("elections_polls.RData")
```

The `polls` `data.frame` contains the following columns:

- `race`: race identifier year_electiontype_location.
- `race_state`: race identifier year_electiontype_state. In contrast to the previous column, this identifier ignores information about counties and only contains information at the state level.
- `state`: abbreviation of state of the election.
- `state_long`: full name of the state.
- `type`: type of race. Could be either presidential (Pres), senatorial election (Sen-G) or house representative election (House-G).
- `year`: election year.
- `pollster`: name of the pollster.
- `samplesize`: size of the sample used in the poll.
- `startdate`: start date of the poll. If this date was not available, this will be the same as enddate.
- `enddate`: end date of the poll.
- `democrat_name`: name of the democratic candidate.
- `democrat_poll`: percentage of people from the poll saying they would vote for the democratic candidate. 
- `democrat_result`: actual percentage of people voting for the democratic candidate in the election.
- `republican_name`: name of the republican candidate.
- `republican_poll`: percentage of people from the poll saying they would vote for the republican candidate. 
- `republican_result`: actual percentage of people voting for the republican candidate in the election.

## Problem 1
Subset the `polls` `data.frame` to only keep polls which ended within approximately 6 weeks preceding any [Election Day][election-day] (i.e. in October or November). You will be using this smaller data set for the remainder of this homework. Hint: you might need to extract the month from the `enddate`. The `strftime` function might be useful for this.


## Problem 2
For each poll, calculate the difference between the fraction of people saying they would vote for the Republican Party and the fraction of people saying they would vote for the Democratic Party. Add these values to your `data.frame` as a new column named `spread`. Similarly, calculate the true (actual) difference between the fraction of people who ended up voting for the Republican Party and the fraction of people who ended up voting for the Democratic Party. Again, add the true (actual) difference as a new column named `spread_act` to your `data.frame`. 


## Problem 3
Now, we are going to collapse polls for each race. For this, we group polls by the type, year, and state of the corresponding election. There are several polls for each race, and each one provides an approximation of the real $d$ value. Generate a point estimate for each race, $\hat{d}$, that summarizes the polls for that race using the following steps: [1] use the column `race_state` to group polls by type, year, and state, and [2] use the `summarize` function to generate a new `data.frame` called `reduced_polls` with the following columns:

1. the mean `spread`,
2. the standard deviation of the `spread`,
3. the mean `spread_act`, and
4. the number of polls per race. 

Make sure you also keep information about the `year` and `state` of each race in this new `data.frame`.


## Problem 4
Note that the previous question merges different congressional elections held in the same year across districts in a state. Using the collapsed `data.frame` from the previous question, filter out races from congressional elections. Also, filter out races that had less than 3 polls. The `reduced_polls` `data.frame` should now contain only Presidential and Senatorial elections. For each remaining race, build a 95\% confidence interval for $\hat{d}$. Include the boundaries (`upper` and `lower`) of these confidence intervals in the `reduced_polls` `data.frame`.


## Problem 5
For each election type in each year, calculate the fraction of states where the actual result was **outside** of the 95% confidence interval. Which race was the most unpredictable, (i.e. for which race was the polling data most inaccurate compared to the actual result)?


## Problem 6
Using data from *only* the 2016 presidential election, make a plot of states ($x$-axis) and $\hat{d}$ estimates ($y$-axis). Using the `gg_errorbar` function, include the 95\% confidence intervals of $\hat{d}$ for each state. Finally, using a different color, include the actual results for each state. Describe the resulting plot.


## Problem 7
Which states did Donald Trump win in the 2016 presidential election, despite the entire 95\% confidence intervals being in favor of his opponent, Hillary Clinton?


## Problem 8
Looking again at all races, calculate the the difference between $d$ and $\hat{d}$ (Hint: use the data for all races in the `reduced_polls` object created in Problem 4). We call this the bias term. Add these values as a column to `reduced_polls`.


## Problem 9
Plot and compare the distribution of bias terms for races in each year. Describe the bias patterns. Are these centered around zero? Give possible explanations. 


## Problem 10
Using the [__fiftystater__](https://cran.r-project.org/web/packages/fiftystater/index.html) package, create a plot for each of the last three presidential elections showing the bias estimates for each state on a map of the United States. Describe any patterns or differences between the three elections.



[wapo]:https://www.washingtonpost.com/news/monkey-cage/wp/2016/11/08/a-comprehensive-average-of-election-forecasts-points-to-a-decisive-clinton-victory/
[election-day]:https://en.wikipedia.org/wiki/Election_Day_(United_States)
[rcp]: https://www.realclearpolitics.com/
[thirty]: https://github.com/fivethirtyeight/data
