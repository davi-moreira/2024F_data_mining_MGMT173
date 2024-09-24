# ---
# title: "<span style = 'font-size: 100%;'> MGMT 17300: Data Mining Lab </span>"
# subtitle: "<span style = 'font-size: 150%;'>Key Steps of Performing Data Mining in R</span>"
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
# #logo: images/quarto.png
# footer: "Data Mining Lab"
# theme: [simple,custom.scss]
# ---
# 
# ## Overview
# 
# ::: nonincremental
# ::: columns
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# - Lesson 06 Exercise Review
# 
# - Lesson Question!
# 
# - The 8 Key Steps of a Data Mining Project
# 
# :::
# 
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# :::
# :::
# :::
# 
# # Lesson 06 Exercises Review {background-color="#cfb991"}
# 
# # Lesson Question! {background-color="#cfb991"}
# 
# # Key Steps of a Data Mining Project {background-color="#cfb991"}
# 
# ## The 8 Key Steps of a Data Mining Project
# 
# 1. **Define the project’s goal**  
# 2. **Acquire analysis tools**  
# 3. **Prepare data**  
# 4. **Data summarization**  
# 5. **Data visualization**  
# 6. **Data mining modeling**  
# 7. **Model validation**  
# 8. **Interpretation and implementation**  
# 
# ## Step 1: Define the project’s goal
# 
# - **Step 1**: Define the project’s goal based on available data
# 
# - The project objective serves as the guiding light.
# 
# - **Car Data Mining Project Example**: predict a car's fuel efficiency (measured as miles per gallon, `mpg`) based on key factors or attributes of the car.
# 
# ## Demonstrative Project Example
# 
# - **Example Project**: Car’s fuel efficiency (mpg) influenced by:
# 
# - Weight (wt)
# - Horsepower (hp)
# - Cylinders (cyl)
# - Transmission type (am)
# - Engine shape (vs)
# 
# - The dataset becomes the mine where insights are excavated.
# 
# ## Step 2: Acquire Analysis Tools
# 
# - **Step 2**: Acquire Analysis Tools
# 
# - Use R for data analysis
# 
# - R includes an extensive collection of packages and functions
# 
# - Example R packages:
# 
# - `dplyr`
# - `tidyr`
# 
# ## Step 3: Prepare Data
# 
# - **Data preparation**: transformation, cleaning, and preprocessing
# 
# - Filtering out missing or invalid values
# 
# - Transforming and restructuring data
# 
# ::: {.fragment}
# 
# **Car Data Mining Project Example:** Cleaning `mtcars` data in R using `dplyr`
# 
# 
# ```{r, echo=TRUE, eval=FALSE}

library(dplyr)

clean_data <- mtcars %>% filter(!is.na(hp)) %>% select(cyl, hp)

View(clean_data)

# ```
# 
# :::
# 
# ## Useful R Functions for Data Preparation
# 
# - **Cleaning and Filtering**:
# 
# - `is.na()`, `complete.cases()`, `filter()`
# 
# - **Data Transformation**:
# 
# - `scale()`, `normalize()`, `log()`
# 
# - **Data Restructuring**:
# 
# - `pivot_longer()`, `pivot_wider()`
# 
# - **Data Type Conversion**:
# 
# - `as.numeric()`, `as.Date()`, `as.factor()`
# 
# ## Step 4: Data Summarization
# 
# - Summarize key insights from the core of the data to identify trends, correlations, and high-level patterns
# 
# - Techniques:
# 
# - Aggregation
# - Statistical summaries (mean, median, standard deviation)
# - Group-by operations
# 
# ::: {.fragment}
# 
# **Car Data Mining Project Example:**
# 
# ```{r, echo=TRUE, eval=FALSE}
summary(mtcars)
# ```
# 
# :::
# 
# ## Step 5: Data Visualization
# 
# - Visual representation of data is crucial for interpretation. It is used to communicate insights visually, identify relationships, and detect outliers.
# 
# - Techniques:
# 
# - Histograms
# - Box plots
# - Scatter plots
# - Bar charts
# 
# ::: {.fragment}
# 
# **Car Data Mining Project Example:**
# 
# ```{r, echo=TRUE, eval=FALSE}

library(ggplot2)
ggplot(mtcars, aes(x = hp, y = mpg)) + geom_point()

# ```
# 
# :::
# 
# ## Step 5: Data Visualization
# 
# ::: columns
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# **Car Data Mining Project Example:**
# 
# ```{r, echo=TRUE, eval=FALSE}
# Load necessary libraries
library(GGally)

ggcorr(mtcars,
method = c("pairwise", "pearson"),
label = TRUE,
label_round = 2,
label_alpha = TRUE,
name = "Correlation")

# ```
# 
# :::
# 
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# **Car Data Mining Project Example:**
# 
# ```{r, echo=F, eval=T}
# 
# # Load necessary libraries
# library(GGally)
# 
# ggcorr(mtcars, 
# method = c("pairwise", "pearson"), 
# label = TRUE, 
# label_round = 2, 
# label_alpha = TRUE, 
# name = "Correlation")
# 
# ```
# 
# :::
# :::
# 
# 
# 
# 
# ## Step 6: Data Mining Modeling
# 
# - Build models to uncover hidden patterns and relationships
# - Common techniques:
# 
# - **Clustering**: Groups similar data points together
# - **Regression**: Predicts relationships between variables
# 
# ::: {.fragment}
# 
# **Car Data Mining Project Example:** Linear Regression Model
# 
# ```{r, echo=TRUE, eval=FALSE}

model <- lm(mpg ~ wt + hp, data = mtcars)

summary(model)

# ```
# 
# ::: 
# 
# ## Step 6: Data Mining Modeling Example Explanation
# 
# ::: {style="font-size: 80%;"}
# 
# - **Linear Model (`lm`)**:
# 
# - Fits a linear regression model to predict `mpg` using `wt` (weight) and `hp` (horsepower).
# 
# - **`summary(model)`**:
# 
# - Provides detailed output of the model's performance.
# 
# - **Model Output**:
# - **Intercept**: 37.23 (baseline `mpg` when `wt` and `hp` are zero).
# - **Coefficients**:
# 
# - For every unit increase in `wt`, `mpg` decreases by 3.88 units.
# - For every unit increase in `hp`, `mpg` decreases by 0.03 units.
# 
# - **R-squared**:
# 
# - Multiple R-squared: 0.8268 (explains $\approx83%$ of variance in `mpg`).
# - Adjusted R-squared: 0.8148 (adjusts for number of predictors).
# 
# - **Significance**:
# 
# - Both `wt` and `hp` are significant predictors (p-values < 0.05).
# 
# :::
# 
# ## Step 7: Data Mining Model Validation
# 
# - Validate model accuracy and generalizability to ensure that the model performs well on unseen data and avoids overfitting.
# 
# - Techniques:
# 
# - Cross-validation
# - Training/Test split
# - Performance metrics (e.g., R-squared, Precision, Recall)
# 
# ::: {.fragment}
# 
# **Car Data Mining Project Example:**  
# 
# ```{r, echo=TRUE, eval=FALSE}
library(caret)

trainControl <- trainControl(method="cv", number=10)

# Only using wt and hp as independent variables
model <- train(mpg ~ wt + hp, data=mtcars, method="lm", trControl=trainControl)

print(model)
# ```
# 
# :::
# 
# ## Step 7: Model Validation Example Explanation
# 
# ::: {style="font-size: 80%;"}
# 
# - **Cross-validation**:
# 
# - `trainControl(method = "cv", number = 10)` sets up 10-fold cross-validation.
# - The model is trained on 9 parts of the data and tested on the remaining part, iterating 10 times.
# 
# - **train() function**:
# 
# - Trains a linear regression model (`lm`) using `wt` (weight) and `hp` (horsepower) as independent variables to predict `mpg`.
# 
# - **Model Output**:
# 
# - **RMSE** (Root Mean Squared Error): 2.48 (average error in prediction). It tells us how concentrated the data points are around the line of best fit.
# - **R-squared**: 0.94521 (approximately 94.5% of variability in `mpg` explained by the model).
# - **MAE** (Mean Absolute Error): 2.23 (average magnitude of prediction error). Lower MAE values indicate better model performance. On average, the model's prediction of mpg differs from the actual value by about 2.23 mpg.
# 
# - **Purpose**:
# 
# - Ensures the model generalizes well by preventing overfitting.
# - Provides reliable performance metrics for real-world application.
# 
# :::
# 
# ## Step 8: Interpretation and Implementation
# 
# - Interpret results and apply findings in decision-making
# 
# - Key considerations:
# 
# - How can the insights be used in practice?
# - Are the patterns meaningful for the project’s goals?
# 
# - Implementation:
# 
# - Integrate findings into business strategy or decision-making processes
# - Examples: Customer segmentation, risk management, optimization
# 
# # Summary {background-color="#cfb991"}
# 
# ## Summary
# 
# ::: nonincremental
# 
# ::: {style="font-size: 80%;"}
# 
# Main Takeaways from this lecture:
# 
# - **8 Key Steps of Data Mining**:
# 
# - Defining the project's goal is crucial to guide the process.
# - Using appropriate analysis tools, such as R, is essential for data mining.
# 
# - **Data Preparation**:
# 
# - Cleaning, transforming, and restructuring the data is critical for accurate results.
# - R packages like `dplyr` and `tidyr` streamline these tasks.
# 
# - **Modeling**:
# 
# - Linear regression helps uncover relationships between variables (e.g., predicting `mpg` from `wt` and `hp`).
# 
# - **Model Validation**:
# 
# - Validate models to ensure generalizability (e.g. through cross-validation techniques).
# 
# - **Interpretation & Implementation**:
# 
# - Applying insights from the model to real-world decision-making, such as business strategy or optimization.
# 
# :::
# 
# :::
# 
# # Thank you! {background-color="#cfb991"}
