# Homework #3
## Due: October 31, 2018 by 11:59pm

# Question 1

In the game of [roulette](https://en.wikipedia.org/wiki/Roulette) you can bet on several things including black or red. On this bet, if you win, you double your earnings. In this problem we will look at how the casino makes money on this. If you look at the [possibilities](http://www.math.uah.edu/stat/games/Roulette.png), you realize that the chance of red or black are both slightly less than 1/2. There are two green spots, so the probability of landing on black (or red) is actually 18/38, or 9/19.

### Question 1A

Let's make a quick sampling model for this simple version of roulette. You are going to bet a dollar each time you play and always bet on black. Make a sampling model for this process using the `sample` function. Write a function `roulette` that takes as an argument the number of times you play, $n$, and returns your earnings, which here we denote with $S_n$.

### Question 1B

Use Monte Carlo simulation to study the distribution of total earnings $S_n$ for $n = 100, 250, 500, 1000$. That is, for each value of $n$, make one or more plots to examine the distribution of earnings. Examine the plots, and describe how the expected values and standard errors change with $n$. You do not need to show us the plots. Just the code you used to create them. Hints: It's OK to use a for-loop. Think about the possible values $S_n$ can take when deciding on the `geom_histogram` parameters such as `binwidth` and `center`.

### Question 1C

Repeat Problem 1B but for the means instead of the sums. After your answer, describe the mathematical results that you can use to answer this without making plots.

### Question 1D

Now think of a sampling model for our casino problem. What is the expected value of our sampling model? What is the standard deviation of our sampling model?

### Question 1E

Suppose you play 100 times. Use the Central Limit Theorem (CLT) to approximate the probability that the casino loses money. Then use a Monte Carlo simulation to corroborate your finding.

### Question 1F

In general, what is the probability that the casino loses money as a function of $n$? Make a plot for values ranging from 25 to 1,000. Why does the casino give you free drinks if you keep playing?


# Question 2

The baseball playoffs are about to start. During the first round of the playoffs, teams play a best of five series. After the first round, they play seven game series.

### Question 2A

The Red Sox and Astros are playing a five game series. Assume they are equally good. This means each game is like a coin toss. Build a Monte Carlo simulation to determine the probability that the Red Sox win the series. (Hint: start by creating a function `series_outcome` similar to the `roulette` function from Problem 1A.)

### Question 2B

The answer to Problem 2A is not surprising. What if one of the teams is better? Compute the probability that the Red Sox win the series if the Astros are better and have a 60% of winning each game.

### Question 2C 

How does this probability change if instead of five games, they play seven? How about three? What law did you learn that explains this?

### Question 2D

Now, assume again that the two teams are equally good. What is the probability that the Red Sox still win the series if they lose the first game? Do this for a five game and seven game series.
