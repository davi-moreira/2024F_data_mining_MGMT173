# ---
# title: "<span style = 'font-size: 100%;'> MGMT 17300: Data Mining Lab </span>"
# subtitle: "<span style = 'font-size: 150%;'> Predictive Model Interpretations and Predictions </span>"
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
# -   Multiple Regression Model
# - Model Interpretation
# - Making predictions
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
# <center>![](figs/15_course_learning_milestones.jpg){width="60%"}</center>
# 
# # The 8 Key Steps of a Data Mining Project {background-color="#cfb991"}
# 
# ## The 8 Key Steps of a Data Mining Project
# 
# <br>
# 
# :::::: columns
# ::: {.column width="33%"}
# **Goal Setting**
# 
# 1.  **Define the project’s goal**\
# :::
# 
# ::: {.column width="33%"}
# **Data Understanding**
# 
# 2.  **Acquire analysis tools**\
# 3.  **Prepare data**\
# 4.  **Data summarization**\
# 5.  **Data visualization**\
# :::
# 
# ::: {.column width="33%"}
# **Insights**
# 
# 6.  **Data mining modeling**\
# 7.  **Model validation**\
# 8.  **Interpretation and implementation**
# :::
# ::::::
# 
# # Multiple Regression Model {background-color="#cfb991"}
# 
# ## Precision and Accuracy
# 
# :::::::: columns
# ::: {.column width="60%" style="text-align: center; justify-content: center; align-items: center;"}
# ```{r  echo=FALSE, out.width = "80%",fig.align="center"}
# knitr::include_graphics("figs/precision_accuracy.png")
# ```
# :::
# 
# :::::: {.column width="40%" style="text-align: center; justify-content: center; align-items: center;"}
# ::::: {style="font-size: 70%;"}
# -   **Precision**: Refers to the consistency or reliability of the model's predictions.
# 
# -   **Accuracy**: Refers to how close the model's predictions are to the true values.
# 
# :::: fragment
# In the context of regression:
# 
# -   **High Precision, Low Accuracy**: Predictions are consistent but biased.
# -   **High Precision, High Accuracy**: Predictions are both consistent and valid.
# -   **Low Precision, Low Accuracy**: Predictions are neither consistent nor valid.
# -   **Low Precision, High Accuracy**: Predictions are valid on average but have high variability.
# 
# ::: fragment
# **To achieve high precision and high accuracy, we need to meet the model assumptions.**
# :::
# ::::
# :::::
# ::::::
# ::::::::
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
# # Multiple Regression Model Example {background-color="#cfb991"}
# 
# ## Objective
# 
# -   Analyze the relationship between multiple predictors and miles per gallon (`mpg`).
# -   Build a multiple linear regression model to predict `mpg` based on:
# -   Horsepower (`hp`)
# -   Weight (`wt`)
# -   Transmission Type (`am`)
# -   Engine Type (`vs`)
# -   Number of Cylinders (`cyl`)
# 
# ## Variables Used
# 
# -   **mpg**: Miles per gallon (Dependent Variable).
# -   **hp**: Gross horsepower.
# -   **wt**: Weight (1000 lbs).
# -   **am**: Transmission (0 = automatic, 1 = manual).
# -   **vs**: Engine type (0 = V-shaped, 1 = straight).
# -   **cyl**: Number of cylinders.
# 
# ## Data Structure
# 
# ::::: columns
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# <br>
# 
# ```{r echo=TRUE, eval=FALSE, results='hide', warning=FALSE, message=FALSE}
# # Structure of the dataset
str(mtcars[, c("mpg", "hp", "wt", "am", "vs", "cyl")])
# ```
# :::
# 
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# ```{r echo=F, eval=T, warning=FALSE, message=FALSE}
# Structure of the dataset
str(mtcars[, c("mpg", "hp", "wt", "am", "vs", "cyl")])
# ```
# :::
# :::::
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
# -   **Observation**: No missing values in the selected variables.
# 
# ## Visualizing Relationships: Pairwise Scatter Plots
# 
# ::::: columns
# ::: {.column width="30%" style="text-align: center; justify-content: center; align-items: center;"}
# <br>
# 
# ```{r echo=TRUE, eval=FALSE, results='hide', warning=FALSE, message=FALSE}
# Scatter plot matrix
pairs(mtcars[, c("mpg", "hp", "wt")], main = "Scatter Plot Matrix")
# ```
# :::
# 
# ::: {.column width="70%" style="text-align: center; justify-content: center; align-items: center;"}
# ```{r echo=F, warning=FALSE, message=FALSE}
# Scatter plot matrix
pairs(mtcars[, c("mpg", "hp", "wt")], main = "Scatter Plot Matrix")
# ```
# :::
# :::::
# 
# ## Boxplots for Categorical Variables
# 
# ::::: columns
# ::: {.column width="30%" style="text-align: center; justify-content: center; align-items: center;"}
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
# :::
# 
# ::: {.column width="70%" style="text-align: center; justify-content: center; align-items: center;"}
# ```{r echo=F, warning=FALSE, message=FALSE}
# # Boxplot of mpg by Transmission Type
# boxplot(mpg ~ am, data = mtcars,
# main = "MPG by Transmission Type",
# xlab = "Transmission",
# ylab = "Miles per Gallon",
# col = c("lightblue", "lightgreen"))
# ```
# :::
# :::::
# 
# ## Fitting the Multiple Regression Model
# 
# ::::: columns
# ::: {.column width="30%" style="text-align: center; justify-content: center; align-items: center;"}
# <br>
# 
# ```{r echo=TRUE, eval=FALSE, results='hide', warning=FALSE, message=FALSE}
# Fit the multiple linear regression model
model_mult <- lm(mpg ~ hp + wt + am + vs + cyl, data = mtcars)
summary(model_mult)
# ```
# :::
# 
# ::: {.column width="30%" style="text-align: center; justify-content: center; align-items: center;"}
# ```{r}
# Fit the multiple linear regression model
model_mult <- lm(mpg ~ hp + wt + am + vs + cyl, data = mtcars)
summary(model_mult)
# ```
# :::
# :::::
# 
# ## Interpreting the Coefficients
# 
# -   **Intercept (**$\beta_0$): Expected `mpg` when all predictors are at reference levels or zero.
# -   **hp**: Change in `mpg` per unit increase in horsepower, holding other variables constant.
# -   **wt**: Change in `mpg` per 1000 lbs increase in weight, holding other variables constant.
# -   **am**: Difference in `mpg` between manual and automatic transmission.
# -   **vs**: Difference in `mpg` between straight and V-shaped engines.
# -   **cyl**: Effect of the number of cylinders on `mpg`.
# 
# ## Interpreting the Results
# 
# -   Significant Predictors
# 
# -   **hp** and **wt**: Generally significant predictors of `mpg`.
# -   **am**: Transmission type may have a significant effect.
# -   **vs** and **cyl**: Assess their p-values to determine significance.
# 
# ## Evaluating the Model
# 
# -   **Adjusted R-squared**: Measures the proportion of variance in `mpg` explained by the model, adjusted for the number of predictors.
# 
# -   **F-statistic**: Tests the overall significance of the model.
# 
# -   **p-values**: Assess the significance of individual predictors.
# 
# # Making predictions with a predictive model {background-color="#cfb991"}
# 
# ## Best Subset Selection
# 
# ::: {style="font-size: 80%;"}
# **Method**: Use the `regsubsets()` function from the `leaps` package to evaluate all possible combinations of predictors and identify the best model. This method guarantees that the best subset of predictors is selected according to a chosen criterion (e.g., adjusted $R^2$, AIC, BIC).
# 
# **Selection**: This method ensures an exhaustive search of all possible combinations, providing the best model for each subset size.
# 
# ```{r echo=TRUE, eval=FALSE, results='hide', warning=FALSE, message=FALSE}
library(leaps)

# Fit the best subset model
best_model <- regsubsets(mpg ~ ., data = mtcars, nbest = 1)

# Extract the summary of the model
best_model_summary <- summary(best_model)

# Extract metrics
bic_values <- best_model_summary$bic

# Find the best model indices based on each criterion
best_bic_index <- which.min(bic_values)

# Display the best models based on the chosen criteria

cat("\nBest model based on BIC includes:\n")
print(coef(best_model, best_bic_index))

# ```
# 
# **Result:** The `regsubsets()` function outputs the best subset of predictors for each model size, allowing you to compare and choose the optimal model based on adjusted $R^2$, BIC, or other criteria.
# 
# In our case now, we are concerned with the optimal model for prediction, so we are using BIC as our criteria.
# :::
# 
# 
# ## Cross-Validation
# 
# ::: {style="font-size: 65%;"}
# **Method**: Use k-fold cross-validation to assess the predictive performance of the model. This method helps evaluate how the model generalizes to unseen data.
# 
# **Selection**: Choose the model with better cross-validation metrics (e.g., lower mean squared error).
# 
# <!---```{r}
# #| echo: TRUE
# #| eval: TRUE
# #| results: 'hide'
# #| warning: FALSE
# #| message: FALSE
# #| max-height: '200px'
# #| code-fold: TRUE
# #| code-summary: "Show code"
# #| code-overflow: scroll
# --->
# 
# ```{r echo=TRUE, eval=FALSE, results='hide', warning=FALSE, message=FALSE}

library(caret)

# Define the cross-validation method
trainControl <- trainControl(method = "cv", number = 10)

# Train the model based on adjusted R-squared criteria
original_model <- train(mpg ~ hp + wt + am + vs + cyl, data = mtcars, method = "lm", trControl = trainControl)
# print(original_model)

# Train the model based on BIC criteria
model_bic <- train(mpg ~ wt + qsec + am, data = mtcars, method = "lm", trControl = trainControl)
# print(model_bic)

# Compare RMSE, R-squared, and MAE (Mean Absolute Error) for both models
#cat("\nComparison of Prediction Performance:\n")
performance_comparison <- rbind(
"original_model" = original_model$results[, c("RMSE", "Rsquared", "MAE")],
"Model_bic" = model_bic$results[, c("RMSE", "Rsquared", "MAE")]
)
print(performance_comparison)

# ```
# :::
# 
# ## Cross-Validation: output
# 
# ::: nonincremental
# -   **RMSE (Root Mean Squared Error)**:
# -   Represents the standard deviation of prediction errors.
# -   Lower values indicate better performance (predictions are closer to actual values).
# -   **R-squared**:
# -   Indicates how well the independent variables explain the variability of the dependent variable.
# -   Higher values (closer to 1) suggest better explanatory power.
# -   **MAE (Mean Absolute Error)**:
# -   Measures the average magnitude of errors in predictions.
# -   Lower values indicate more accurate predictions.
# :::
# 
# ## Cross-Validation: Conclusion
# 
# ::: nonincremental
# **original_model**:
# 
# -   Better at explaining variability (higher R-squared).
# 
# -   Slightly higher prediction error (RMSE and MAE).
# 
# **model_bic**:
# 
# -   More accurate predictions (lower RMSE and MAE).
# 
# -   Explains less variability (lower R-squared).
# 
# **Recommendation**
# 
# -   **Choose original_model**: If the goal is to maximize explanation of variability in `mpg`.
# 
# -   **Choose Model_bic**: If the goal is to minimize prediction error for better accuracy.
# 
# **Final Choice**: Depends if the analysis objective prioritize explanatory power or prediction accuracy.
# :::
# 
# ## Making predictions with a predictive model
# 
# Now that we have our prediction model, let's see an example on how can we use it for prediction.
# 
# To predict `mpg` with our model we need to have data regarding our independent variables. To do so, let's split our original dataset:
# 
# ```{r echo=TRUE, eval=FALSE, results='hide', warning=FALSE, message=FALSE}

set.seed(123)  # for reproducibility
splitIndex <- createDataPartition(mtcars$mpg, p = 0.8, list = FALSE)
training_data <- mtcars[splitIndex, ]
testing_data <- mtcars[-splitIndex, ]

# ```
# 
# 
# ## Making predictions with a predictive model
# 
# We run the model with our `training_data` and predict the `mpg` values usin our `testing_data`.
# 
# ```{r echo=TRUE, eval=FALSE, results='hide', warning=FALSE, message=FALSE}
model <- lm(mpg ~ wt + qsec + am, data = training_data)

predictions <- predict(model, newdata = testing_data)
# ```
# 
# ## Making predictions with a predictive model
# 
# By combining our predicted results into our original dataset, we can check in which extent we were able to predict the actual `mpg` values:
# 
# ```{r echo=TRUE, eval=FALSE, results='hide', warning=FALSE, message=FALSE}
# Combine actual and predicted values
plot_data <- data.frame(Actual = testing_data$mpg, Predicted = predictions)

plot_data
# ```
# 
# ## Making predictions with a predictive model
# 
# We can plot a scatter plot with the actual `mpg` values on the x-axis and predicted `mpg` values on the y-axis. 
# 
# ```{r echo=TRUE, eval=FALSE, results='hide', warning=FALSE, message=FALSE}
# Create a scatter plot
ggplot(plot_data, aes(x = Actual, y = Predicted)) +
geom_point() +
geom_smooth(method = "lm", formula = y ~ x, color = "red") +
labs(
x = "Actual MPG",
y = "Predicted MPG",
title = "Actual vs. Predicted MPG"
) +
theme_minimal()
# ```
# 
# The red line represents a linear regression line that helps us see how well our predictions align with the actual data.
# 
# # Summary {background-color="#cfb991"}
# 
# ## Summary
# 
# :::: nonincremental
# ::: {style="font-size: 60%;"}
# Main Takeaways from this lecture:
# 
# -   **Model Evaluation and Precision**:
# -   **Precision**: Consistency of model predictions.
# -   **Accuracy**: Closeness of predictions to true values.
# -   Aim for **high precision and high accuracy** by meeting model assumptions.
# -   **Controlling for Variables**:
# -   Importance of controlling for confounders.
# -   Use multiple regression to control for potential confounding variables.
# -   **Strategies for Model Selection**:
# -   Identify predictors with low p-values (\< 0.05) to determine their significance.
# -   Use **Adjusted R-Squared**, **AIC/BIC**, and **F-Tests** for model comparison.
# -   **Multicollinearity**: Check with VIF and address high VIF (\> 10).
# -   **Best Subset Selection**: Use `regsubsets()` to find the best combination of predictors.
# -   **Cross-Validation**: Evaluate models using RMSE, R-squared, and MAE.
# -   **Key Recommendations**:
# -   Choose the model with higher adjusted R-squared for explanatory power.
# -   Opt for lower RMSE and MAE if prediction accuracy is the main objective.
# -   Balance between complexity and performance using AIC/BIC and other metrics.
# :::
# ::::
# 
# # Thank you! {background-color="#cfb991"}
