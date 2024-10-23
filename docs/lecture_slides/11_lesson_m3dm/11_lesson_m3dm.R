# ---
# title: "<span style = 'font-size: 100%;'> MGMT 17300: Data Mining Lab </span>"
# subtitle: "<span style = 'font-size: 150%;'> Predictive Modeling in R </span>"
# author: "Professor: Davi Moreira"
# date: "2024-08-01"
# date-format: "MMMM DD, YYYY"
# format:
# revealjs: 
# transition: slide
# background-transition: fade
# width: 1600
# height: 900
# center: true
# slide-number: true
# incremental: true
# chalkboard: 
# buttons: false
# preview-links: auto
# #logo: figs/quarto.png
# footer: "Data Mining Lab"
# theme: [simple,custom.scss]
# html-math-method:
# method: mathjax
# url: "https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"
# ---
# 
# ## Overview
# 
# :::::: nonincremental
# ::::: columns
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# -   Lesson Exercise Review
# 
# -   Lesson Question!
# 
# -   Course Learning Milestones
# 
# -   The 8 Key Steps of a Data Mining Project
# :::
# 
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# - Association Between Two Variables
# - Model
# - Simple Regression Model
# - Making Predictions
# - Multiple Regression Model
# 
# :::
# :::::
# ::::::
# 
# # Lesson Exercises Review {background-color="#cfb991"}
# 
# # Lesson Question! {background-color="#cfb991"}
# 
# # Course Learning Milestones {background-color="#cfb991"}
# 
# ## Course Learning Milestones
# 
# <center>![](figs/14_course_learning_milestones.jpg){width="60%"}</center>
# 
# # The 8 Key Steps of a Data Mining Project {background-color="#cfb991"}
# 
# ## The 8 Key Steps of a Data Mining Project
# 
# <br>
# 
# :::::: columns
# ::: {.column width="33%"}
# ### Goal Setting
# 
# 1.  **Define the project’s goal**\
# :::
# 
# ::: {.column width="33%"}
# ### Data Understanding
# 
# 2.  **Acquire analysis tools**\
# 3.  **Prepare data**\
# 4.  **Data summarization**\
# 5.  **Data visualization**\
# :::
# 
# ::: {.column width="33%"}
# ### Insights
# 
# 6.  **Data mining modeling**\
# 7.  **Model validation**\
# 8.  **Interpretation and implementation**
# :::
# ::::::
# 
# # Association Between Two Variables {background-color="#cfb991"}
# 
# ## Covariance
# 
# <br>
# 
# ```{r  echo=FALSE, out.width = "50%",fig.align="center"}
# knitr::include_graphics("figs/scatter_plot.png")
# ```
# 
# <br>
# 
# ::: {.nonincremental}
# 
# - The [Covariance](https://en.wikipedia.org/wiki/Covariance) is a measure of the linear association between two variables.
# - Positive values indicate a positive relationship.
# - Negative values indicate a negative relationship.
# 
# :::
# 
# <br>
# 
# <br>
# 
# d## Correlation Coefficient
# 
# <br>
# 
# ```{r  echo=FALSE, out.width = "80%",fig.align="center"}
# knitr::include_graphics("figs/xkcd.png")
# ```
# 
# 
# ::: {.nonincremental}
# 
# - [Correlation](https://en.wikipedia.org/wiki/Correlation) is a unit-free measure of linear association and not necessarily causation.
# - The coefficient can take on values between −1 and +1.
# 
# - Values near −1 indicate a strong negative linear relationship.
# - Values near +1 indicate a strong positive linear relationship.
# 
# - The closer the correlation is to zero, the weaker the linear relationship.
# 
# :::
# 
# <br>
# 
# # Model {background-color="#cfb991"}
# 
# ## What is a model?
# 
# 
# ::: columns
# ::: {.column width="40%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# <br>
# 
# <br>
# 
# <br>
# 
# <br>
# 
# > All models are wrong, but some are useful.
# > 
# >  George Box
# 
# :::
# ::: {.column width="60%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# ```{r  echo=FALSE, out.width = "70%",fig.align="center"}
# knitr::include_graphics("figs/metro.png")
# ```
# 
# <center>
# 
# [NY City Subway Map](https://new.mta.info/map/5256)
# </center>
# 
# :::
# :::
# 
# 
# 
# <br>
# 
# ## What does it mean to "model" data?
# 
# <br>
# 
# - Let's start with a very simple premise: 
# 
# - to model, we need to make explicit the conditions under which a variable $X$ is related to a variable $Y$. 
# 
# <br>
# 
# - Let's begin by giving specific names to these variables:
# 
# - **Dependent Variable (DV)**: This is our phenomenon of interest, usually denoted as $Y$.
# 
# - **Independent Variable (IV)**: This is the phenomenon that explains/describe our dependent variable, generally denoted as $X$.
# 
# 
# ## What does it mean to "model" data?
# 
# <br>
# 
# Mathematically, we model $Y$ as a *function* of $X$. Statistically, modeling can serve two main purposes:
# 
# 1. [**Prediction**](https://www.statlearning.com/): The possibility of using the values of $X$ to predict the value of $Y$. There must be a substantive connection between these two variables for one to generate reliable predictions about the values of the other.
# 
# 2. [**Explanation**](https://moderndive.com/5-regression.html): Used to understand the connection and significance (both substantive and statistical) of the relationship between two variables. In this case, we aim to accurately estimate the impact of one variable on the other, preferably excluding any potential omitted variables.
# 
# 
# # Simple Regression Model Example  {background-color="#cfb991"}
# 
# ## Objective
# 
# - Analyze the relationship between horsepower (`hp`) and miles per gallon (`mpg`).
# 
# - Build a simple linear regression model to predict `mpg` based on `hp`.
# 
# 
# ## The mtcars Dataset: Overview
# 
# - Built-in dataset in R.
# - Contains data on fuel consumption and 10 aspects of automobile design and performance for 32 cars (1973–74 models).
# 
# - Variables Used
# 
# - **mpg**: Miles per gallon (Dependent Variable).
# - **hp**: Gross horsepower (Independent Variable).
# 
# ## Exploring the Data: Summary Statistics
# 
# <br>
# 
# ::: columns
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# ```{r echo=TRUE, results='hide', warning=FALSE, message=FALSE}
# Summary statistics for mpg and hp
summary(mtcars[, c("mpg", "hp")])
# ```
# 
# :::
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# ```{r echo=F, warning=FALSE, message=FALSE}
# # Summary statistics for mpg and hp
# summary(mtcars[, c("mpg", "hp")])
# ```
# 
# :::
# :::
# ## Scatter Plot of mpg vs hp
# 
# ::: columns
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# <br>
# 
# ```{r echo=T, eval=FALSE, results='hide', warning=FALSE, message=FALSE}
# Scatter plot
plot(mtcars$hp, mtcars$mpg,
main = "MPG vs Horsepower",
xlab = "Horsepower (hp)",
ylab = "Miles per Gallon (mpg)",
pch = 19, col = "blue")
# ```
# 
# ::: 
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# ```{r echo=F, warning=FALSE, message=FALSE}
# # Scatter plot
# plot(mtcars$hp, mtcars$mpg,
# main = "MPG vs Horsepower",
# xlab = "Horsepower (hp)",
# ylab = "Miles per Gallon (mpg)",
# pch = 19, col = "blue")
# ```
# 
# **Observation**: As horsepower increases, miles per gallon tends to decrease.
# 
# ::: 
# ::: 
# 
# 
# ## Fitting the Simple Regression Model
# 
# ::: columns
# ::: {.column width="30%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# <br>
# 
# ```{r echo=TRUE, results='hide', warning=FALSE, message=FALSE}
# Fit the linear regression model
model <- lm(mpg ~ hp, data = mtcars)
summary(model)
# ```
# 
# ::: 
# ::: {.column width="70%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# ```{r}
# # Fit the linear regression model
# model <- lm(mpg ~ hp, data = mtcars)
# summary(model)
# ```
# 
# ::: 
# ::: 
# 
# ## Interpreting the Results
# 
# - **Coefficients**:
# 
# - **Intercept ($\beta_0$)**: Expected `mpg` when `hp` is zero.
# - **Slope ($\beta_1$)**: Change in `mpg` for each additional horsepower.
# 
# - **R-squared**: Proportion of variance in `mpg` explained by `hp`.
# 
# - **p-value**: Significance of the relationship between `hp` and `mpg`.
# 
# 
# # Making Predictions  {background-color="#cfb991"}
# 
# ## Predicting mpg for New hp Values
# 
# ::: columns
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# <br>
# 
# ```{r echo=TRUE, eval=FALSE, results='hide', warning=FALSE, message=FALSE}
# New horsepower values
new_hp <- data.frame(hp = c(110, 150, 200))

# Predicted mpg
predicted_mpg <- predict(model, newdata = new_hp)
cbind(new_hp, Predicted_mpg = predicted_mpg)

# ```
# 
# ::: 
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# <br>
# 
# <br>
# 
# ```{r echo=F, warning=FALSE, message=FALSE}
# # New horsepower values
# new_hp <- data.frame(hp = c(110, 150, 200))
# 
# # Predicted mpg
# predicted_mpg <- predict(model, newdata = new_hp)
# cbind(new_hp, Predicted_mpg = predicted_mpg)
# 
# ```
# 
# ::: 
# ::: 
# 
# ## Adding the Regression Line to the Scatter Plot
# 
# ::: columns
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# <br>
# 
# ```{r echo=TRUE, eval=FALSE, results='hide', warning=FALSE, message=FALSE}
# Scatter plot with regression line
plot(mtcars$hp, mtcars$mpg,
main = "MPG vs Horsepower with Regression Line",
xlab = "Horsepower (hp)",
ylab = "Miles per Gallon (mpg)",
pch = 19, col = "blue")
abline(model, col = "red", lwd = 2)
# ```
# 
# :::
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# ```{r echo=F, warning=FALSE, message=FALSE}
# # Scatter plot with regression line
# plot(mtcars$hp, mtcars$mpg,
# main = "MPG vs Horsepower with Regression Line",
# xlab = "Horsepower (hp)",
# ylab = "Miles per Gallon (mpg)",
# pch = 19, col = "blue")
# abline(model, col = "red", lwd = 2)
# ```
# 
# :::
# :::
# 
# ## Limitations
# 
# - The model considers only one predictor (`hp`).
# 
# - Potential influence of outliers or high-leverage points.
# 
# - Other variables may affect `mpg` (e.g., weight, number of cylinders).
# 
# 
# 
# ## Conclusion: Key Takeaways
# 
# - There is a significant negative linear relationship between horsepower and miles per gallon.
# 
# - The model can be used to predict fuel efficiency based on horsepower.
# 
# ## Recommendations
# 
# - Consider adding more variables for a multiple regression model.
# - Further investigate the impact of other factors on fuel efficiency.
# 
# 
# # Multiple Regression Model  {background-color="#cfb991"}
# 
# ## Precision and Accuracy
# 
# ::: columns
# ::: {.column width="60%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# ```{r  echo=FALSE, out.width = "80%",fig.align="center"}
# knitr::include_graphics("figs/precision_accuracy.png")
# ```
# 
# :::
# 
# ::: {.column width="40%" style="text-align: center; justify-content: center; align-items: center;"}
# ::: {style="font-size: 70%;"}
# 
# - **Precision**: Refers to the consistency or reliability of the model's predictions.
# 
# - **Accuracy**: Refers to how close the model's predictions are to the true values.
# 
# ::: {.fragment}
# 
# In the context of regression:
# 
# - **High Precision, Low Accuracy**: Predictions are consistent but biased.
# - **High Precision, High Accuracy**: Predictions are both consistent and valid.
# - **Low Precision, Low Accuracy**: Predictions are neither consistent nor valid.
# - **Low Precision, High Accuracy**: Predictions are valid on average but have high variability.
# 
# ::: {.fragment}
# **To achieve high precision and high accuracy, we need to meet the model assumptions.**
# 
# :::
# 
# :::
# :::
# :::
# :::
# 
# 
# ## Motivation: Controlling for a Variable
# 
# -   **Puzzle**: What is the effect of education on income?
# -   **Y**: Income
# -   **X**: Education
# -   **Objective**: X $\rightarrow$ Y
# -   **Challenge**: X $\leftarrow$ W $\rightarrow$ Y
# -   **W**: IQ (Intelligence)
# -   **Solution**: Control for W
# 
# ## Motivation: Controlling for a Variable
# 
# <center>
# 
# ![DAG](figs/dag-control.png){width="30%"}
# 
# ::: {style="font-size: 50%;"}
# Source: [Causal Inference Animated Plots](https://nickchk.com/causalgraphs.html)
# :::
# 
# </center>
# 
# ## Motivation: Controlling for a Variable
# 
# <center>
# 
# ![Relationship between Y and X controlled for W](figs/animation_control.gif){width="40%"}
# 
# ::: {style="font-size: 50%;"}
# Source: [Causal Inference Animated Plots](https://nickchk.com/causalgraphs.html)
# :::
# 
# </center>
# 
# ## Omitted Variables (Confounders)
# 
# -   One of the most common errors in observational studies (besides selection bias and information bias — classification or measurement error);
# 
# -   It occurs when we suggest that the explanation for something is "confounded" with the effect of another variable;
# 
# -   For example, "the sun rose because the rooster crowed," and not because of Earth's rotation.
# 
# ## How to Address Omitted Variable Bias?
# 
# -   Be well-versed in the literature;
# 
# -   Select good control variables for your model;
# 
# -   That is, perform a **multiple regression model**.
# 
# ## Multiple Regression
# 
# -   Regression analysis involving two or more independent variables (x's).
# 
# -   This subject area, called multiple regression analysis, enables us to consider more independent variables (factors) and thus obtain better estimates of the relationship than are possible with simple linear regression.
# 
# ## Multiple Regression Model
# 
# The equation that describes how the dependent variable $y$ is related to the independent variables $x_1, x_2, \ldots x_p$ and an error term $\epsilon$ is:
# 
# $$
# y = \beta_0 + \beta_1 x_1 + \beta_2 x_2 + \dots + \beta_p x_p + \epsilon
# $$
# 
# Where:
# 
# -   $\beta_0, \beta_1, \beta_2, \dots, \beta_p$ are the unknown parameters.
# 
# -   $\epsilon$ is a random variable called the error term with the same assumptions as in simple regression (Normality, zero mean, constant variance, independence).
# 
# -   $p$ is the number of independent variables (dimension or complexity of the model).
# 
# ## Multiple Regression Equation
# 
# The equation that describes how the mean value of $y$ is related to $x_1, x_2, \ldots x_p$ is:
# 
# $$
# E(y) = \beta_0 + \beta_1 x_1 + \beta_2 x_2 + \dots + \beta_p x_p
# $$
# 
# $\beta_1, \ldots, \beta_p$ measure the marginal effects of the respective independent variables.
# 
# <br>
# 
# For example, $\beta_1$ is the change in $E(y)$ corresponding to a 1-unit increase in $x_1$, when all other independent variables are held constant or when we control for all other independent variables.
# 
# ## Estimated Multiple Regression Equation
# 
# <br>
# 
# $$
# \hat{y} = b_0 + b_1 x_1 + b_2 x_2 + \dots + b_p x_p
# $$
# 
# A simple random sample is used to compute sample slopes $b_0, b_1, b_2, \dots, b_p$ that are used as the point estimators of the population slopes $\beta_0, \beta_1, \beta_2, \dots, \beta_p$.
# 
# <br>
# 
# Hence, $\hat{y}$ estimates $E(Y)$.
# 
# 
# # Multiple Regression Model Example  {background-color="#cfb991"}
# 
# ## Objective
# 
# - Analyze the relationship between multiple predictors and miles per gallon (`mpg`).
# - Build a multiple linear regression model to predict `mpg` based on:
# - Horsepower (`hp`)
# - Weight (`wt`)
# - Transmission Type (`am`)
# - Engine Type (`vs`)
# - Number of Cylinders (`cyl`)
# 
# ## Variables Used
# 
# - **mpg**: Miles per gallon (Dependent Variable).
# - **hp**: Gross horsepower.
# - **wt**: Weight (1000 lbs).
# - **am**: Transmission (0 = automatic, 1 = manual).
# - **vs**: Engine type (0 = V-shaped, 1 = straight).
# - **cyl**: Number of cylinders.
# 
# ## Data Structure
# 
# ::: columns
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# <br>
# 
# ```{r echo=TRUE, eval=FALSE, results='hide', warning=FALSE, message=FALSE}
# Structure of the dataset
str(mtcars[, c("mpg", "hp", "wt", "am", "vs", "cyl")])
# ```
# 
# :::
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# ```{r echo=F, eval=T, warning=FALSE, message=FALSE}
# # Structure of the dataset
# str(mtcars[, c("mpg", "hp", "wt", "am", "vs", "cyl")])
# ```
# 
# ::: 
# ::: 
# 
# 
# 
# ## Summary Statistics
# 
# ```{r echo=TRUE, eval=FALSE, results='hide', warning=FALSE, message=FALSE}
# Summary statistics for selected variables
summary(mtcars[, c("mpg", "hp", "wt", "am", "vs", "cyl")])
# ```
# 
# ## Converting Categorical Variables
# 
# ```{r echo=TRUE, eval=T, results='hide', warning=FALSE, message=FALSE}
# Convert 'am', 'vs', and 'cyl' to factors
mtcars$am <- factor(mtcars$am, labels = c("Automatic", "Manual"))
mtcars$vs <- factor(mtcars$vs, labels = c("V-shaped", "Straight"))
mtcars$cyl <- factor(mtcars$cyl)
# ```
# 
# ## Checking for Missing Values
# 
# ```{r echo=TRUE, eval=FALSE, results='hide', warning=FALSE, message=FALSE}
# Check for NA values
colSums(is.na(mtcars))
# ```
# 
# - **Observation**: No missing values in the selected variables.
# 
# ## Visualizing Relationships: Pairwise Scatter Plots
# 
# ::: columns
# ::: {.column width="30%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# <br>
# 
# ```{r echo=TRUE, eval=FALSE, results='hide', warning=FALSE, message=FALSE}
# Scatter plot matrix
pairs(mtcars[, c("mpg", "hp", "wt")], main = "Scatter Plot Matrix")
# ```
# 
# ::: 
# ::: {.column width="70%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# ```{r echo=F, warning=FALSE, message=FALSE}
# # Scatter plot matrix
# pairs(mtcars[, c("mpg", "hp", "wt")], main = "Scatter Plot Matrix")
# ```
# 
# ::: 
# ::: 
# 
# ## Boxplots for Categorical Variables
# 
# ::: columns
# ::: {.column width="30%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# <br>
# 
# ```{r echo=TRUE, eval=FALSE, results='hide', warning=FALSE, message=FALSE}
# Boxplot of mpg by Transmission Type
boxplot(mpg ~ am, data = mtcars,
main = "MPG by Transmission Type",
xlab = "Transmission",
ylab = "Miles per Gallon",
col = c("lightblue", "lightgreen"))
# ```
# 
# ::: 
# ::: {.column width="70%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# ```{r echo=F, warning=FALSE, message=FALSE}
# # Boxplot of mpg by Transmission Type
# boxplot(mpg ~ am, data = mtcars,
# main = "MPG by Transmission Type",
# xlab = "Transmission",
# ylab = "Miles per Gallon",
# col = c("lightblue", "lightgreen"))
# ```
# 
# ::: 
# ::: 
# 
# ## Fitting the Multiple Regression Model
# 
# ::: columns
# ::: {.column width="30%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# <br>
# 
# ```{r echo=TRUE, eval=FALSE, results='hide', warning=FALSE, message=FALSE}
# Fit the multiple linear regression model
model_mult <- lm(mpg ~ hp + wt + am + vs + cyl, data = mtcars)
summary(model_mult)
# ```
# 
# ::: 
# ::: {.column width="30%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# ```{r}
# # Fit the multiple linear regression model
# model_mult <- lm(mpg ~ hp + wt + am + vs + cyl, data = mtcars)
# summary(model_mult)
# ```
# 
# :::
# :::
# 
# ## Interpreting the Coefficients
# 
# - **Intercept ($\beta_0$)**: Expected `mpg` when all predictors are at reference levels or zero.
# - **hp**: Change in `mpg` per unit increase in horsepower, holding other variables constant.
# - **wt**: Change in `mpg` per 1000 lbs increase in weight, holding other variables constant.
# - **am**: Difference in `mpg` between manual and automatic transmission.
# - **vs**: Difference in `mpg` between straight and V-shaped engines.
# - **cyl**: Effect of the number of cylinders on `mpg`.
# 
# ## Interpreting the Results
# 
# - Significant Predictors
# 
# - **hp** and **wt**: Generally significant predictors of `mpg`.
# - **am**: Transmission type may have a significant effect.
# - **vs** and **cyl**: Assess their p-values to determine significance.
# 
# ## Evaluating the Model
# 
# - **Adjusted R-squared**: Measures the proportion of variance in `mpg` explained by the model, adjusted for the number of predictors.
# 
# - **F-statistic**: Tests the overall significance of the model.
# 
# - **p-values**: Assess the significance of individual predictors.
# 
# 
# ## Predicting mpg for New Data
# 
# ::: columns
# ::: {.column width="30%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# <br>
# 
# ```{r echo=TRUE, eval=FALSE, results='hide', warning=FALSE, message=FALSE}
# New data frame with predictor values
new_data <- data.frame(
hp = c(110, 150),
wt = c(2.5, 3.0),
am = factor(c("Manual", "Automatic"), levels = levels(mtcars$am)),
vs = factor(c("Straight", "V-shaped"), levels = levels(mtcars$vs)),
cyl = factor(c("4", "6"), levels = levels(mtcars$cyl))
)

# Predicted mpg
predicted_mpg <- predict(model_mult, newdata = new_data)
cbind(new_data, Predicted_mpg = predicted_mpg)
# ```
# 
# :::
# ::: {.column width="70%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# <br>
# 
# <br>
# 
# ```{r}
# # New data frame with predictor values
# new_data <- data.frame(
# hp = c(110, 150),
# wt = c(2.5, 3.0),
# am = factor(c("Manual", "Automatic"), levels = levels(mtcars$am)),
# vs = factor(c("Straight", "V-shaped"), levels = levels(mtcars$vs)),
# cyl = factor(c("4", "6"), levels = levels(mtcars$cyl))
# )
# 
# # Predicted mpg
# predicted_mpg <- predict(model_mult, newdata = new_data)
# cbind(new_data, Predicted_mpg = predicted_mpg)
# ```
# 
# :::
# :::
# 
# 
# 
# # Summary {background-color="#cfb991"}
# 
# ## Summary
# 
# :::: nonincremental
# ::: {style="font-size: 80%;"}
# Main Takeaways from this lecture:
# 
# - Regression models can be used to predict response variables outcomes with independent variables.
# 
# - Compared to the Simple Regression Model, Multiple Regression Models allows for the inclusion of several predictors to improve model accuracy.
# 
# :::
# ::::
# 
# # Thank you! {background-color="#cfb991"}
