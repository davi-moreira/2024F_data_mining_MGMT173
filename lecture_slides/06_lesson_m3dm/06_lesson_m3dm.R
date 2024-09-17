# ---
# title: "<span style = 'font-size: 100%;'> MGMT 17300: Data Mining Lab </span>"
# subtitle: "<span style = 'font-size: 150%;'>Data Types and Handling Data Types in R</span>"
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
# -   Lesson 04 and Lesson 05 Exercises Review
# - Data Types
# - Viewing Data Types in `R`
# - Redefining Data Types in `R`
# - Data Types and Their Impact
# 
# :::
# 
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# :::
# :::
# :::
# 
# # Lesson 04 Exercises Review {background-color="#cfb991"}
# # Lesson 05 Exercises Review {background-color="#cfb991"}
# # Data Types 
# 
# ## Introduction to Data Types
# 
# Data can take various forms, and identifying the correct data type is essential for analysis. In this course, we focus on:
# 
# -   **Numerical data** (e.g., age, temperature)
# -   **Logical data** (e.g., TRUE, FALSE)
# -   **Categorical data** (e.g., gender, color)
# -   **Ordinal data** (e.g., academic performance levels)
# -   **Text data** (e.g., essays, speeches)
# -   **Date and time data** (e.g., 1/1/2023)
# 
# ## Importance of Data Types in `R`
# 
# Data types are critical for:
# 
# -   Correct interpretation during analysis
# -   Efficient memory usage and performance
# -   Avoiding erroneous calculations (e.g., treating categorical data as numeric)
# 
# ## Excel Example
# 
# # Viewing Data Types in `R` {background-color="#cfb991"}
# 
# ## Viewing Data Types in `R`
# 
# To inspect the data types in an `R` dataframe:
# 
# -   **class()**: View the type of a single variable
# -   **str()**: Get a concise summary of the dataframe, including the data type of each variable
# 
# ::: fragment
# ```{r eval=FALSE, echo=TRUE}
# View the type of a single variable
class(mtcars$gear)

# View the structure and data types of the entire dataframe
str(mtcars)
# ```
# :::
# 
# # Redefining Data Types in `R` {background-color="#cfb991"}
# 
# ## Redefining Data Types in `R`
# 
# Sometimes, `R` may misinterpret the data type. You can redefine the data type using functions like `as.numeric()`, `as.character()`, and `as.factor()`.
# 
# ```{r eval=FALSE, echo=TRUE}
# Redefine the vs and am variables in mtcars as categorical
mtcars$vs <- as.factor(mtcars$vs)
mtcars$am <- as.factor(mtcars$am)

# Confirm the changes
str(mtcars)
# ```
# 
# ## Example: `mtcars` Dataset
# 
# The `mtcars` dataset includes variables that could be redefined as categorical. For instance:
# 
# -   `vs` and `am` are numeric by default but represent categorical data.
# 
# ::: fragment
# By redefining them as factors, we avoid incorrect numeric operations.
# 
# ```{r eval=FALSE, echo=TRUE}
# Redefining as factors
mtcars$vs <- as.factor(mtcars$vs)
mtcars$am <- as.factor(mtcars$am)
# ```
# :::
# 
# ## Data Types and Their Impact
# 
# Choosing the correct data type impacts:
# 
# -   **Performance**: Using integers vs floats
# 
# -   **Memory Usage**: Numerical types consume more memory
# 
# -   **Analysis**: Properly defined categorical variables ensure meaningful grouping and sorting.
# 
# # Summary {background-color="#cfb991"}
# 
# ## Summary
# 
# ::: nonincremental
# -   `R` supports various data types: numerical, categorical, text, date/time, etc.
# 
# -   Use `class()` and `str()` to inspect data types in a dataframe.
# 
# -   Correctly define or redefine data types using `as.numeric()`, `as.character()`, `as.factor()`, and other functions for accurate analysis.
# :::
# 
# # Thank you! {background-color="#cfb991"}
