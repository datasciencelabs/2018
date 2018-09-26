## Homework #2
### Due: October 17, 2018 by 11:59pm

Vaccines have helped save millions of lives. In the 19th century, before herd immunization was achieved through vaccination programs, deaths from infectious diseases, like smallpox and polio, were common. However, today, despite all the scientific evidence for their importance, vaccination programs have become somewhat controversial.

The controversy started with a [paper](http://www.thelancet.com/journals/lancet/article/PIIS0140-6736(97)11096-0/abstract) published in 1988 and lead by [Andrew Wakefield](https://en.wikipedia.org/wiki/Andrew_Wakefield) claiming 
there was a link between the administration of the measles, mumps and rubella (MMR) vaccine, and the appearance of autism and bowel disease. 
Despite much science contradicting this finding, sensationalists media reports and fear mongering from conspiracy theorists, led parts of the public to believe that vaccines were harmful. Some parents stopped vaccinating their children. This dangerous practice can be potentially disastrous given that the Center for Disease Control (CDC) estimates that vaccinations will prevent more than 21 million hospitalizations and 732,000 deaths among children born in the last 20 years (see [Benefits from Immunization during the Vaccines for Children Program Era — United States, 1994-2013, MMWR](https://www.cdc.gov/mmwr/preview/mmwrhtml/mm6316a4.htm)). 

Effective communication of data is a strong antidote to misinformation and fear mongering. In this homework you are going to prepare a report to have ready in case you need to help a family member, friend or acquaintance that is not aware of the positive impact vaccines have had for public health.

The data used for these plots were collected, organized and distributed by the [Tycho Project](http://www.tycho.pitt.edu/). They include weekly reported counts data for seven diseases from 1928 to 2011, from all fifty states. We include the yearly totals in the `dslabs` package:

```{r}
library(dslabs)
data(us_contagious_diseases)
```

1. Use the `us_contagious_disease` and `dplyr` tools to create an object called `dat` that stores only the Measles data, includes a per 100,000 people rate, and removes Alaska and Hawaii since they only became states in the late 50s. Note that there is a `weeks_reporting` column. Take that into account when computing the rate.

```{r}
## Your code here
```

2. Plot the Measles disease rate per year for California. Find out when the Measles vaccine was introduced and add a vertical line to the plot to show this year.

```{r}
## Your code here
```

3. Note these rates start off as counts. For larger counts we can expect more variability. There are statistical explanations for this which we don't discuss here. But transforming the data might help stabilize the variability such that it is closer across levels. For 1950, 1960, and 1970, plot the histogram of the data across states with and without the square root transformation. Which seems to have more similar variability across years? Make sure to pick binwidths that result in informative plots.

```{r}
## Your code here
```

4. Plot the Measles disease rate per year for California. Use the the square root transformation. Make sure that the numbers $0,4,16,36, \dots, 100$ appear on the y-axis.
Find out when the Measles vaccine was introduced and add a vertical line to the plot to show this year.

```{r}
## Your code here
```

5. Now, this is just California. Does the pattern hold for other states? Use boxplots to get an idea of the distribution of rates for each year, and see if the pattern holds across states.

```{r}
## Your code here
```

6. One problem with the boxplot is that it does not let us see state-specific trends. Make a plot showing the trends for all states. Add the US average to the plot. Hint: Note there are missing values in the data.

```{r}
## Your code here
```

7. One problem with the plot above is that we can't distinguish states from each other. There are just too many. We have three variables to show: year, state and rate. If we use the two dimensions to show year and state then we need something other than vertical or horizontal position to show the rates. Try using color. Hint: Use the the geometry `geom_tile` to tile the plot with colors representing disease rates. 

```{r}
## Your code here
```

8. The plots above provide strong evidence showing the benefits of vaccines: as vaccines were introduced, disease rates were reduced. But did autism increase? Find yearly reported autism rates data and provide a plot that shows if it has increased and if the increase coincides with the introduction of vaccines.

9. Use data exploration to determine if other diseases (besides Measles) have enough data to explore the effects of vaccines. Prepare a report with as many plots as you think are necessary to provide a case for the benefit of vaccines. Note that there was a data entry mistake and the data for Polio and Pertussis are exactly the same. 

