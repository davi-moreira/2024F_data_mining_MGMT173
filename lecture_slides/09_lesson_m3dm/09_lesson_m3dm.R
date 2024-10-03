# # ------
# title: "<span style = 'font-size: 100%;'> MGMT 17300: Data Mining Lab </span>"
# subtitle: "<span style = 'font-size: 150%;'>Exploratory Data Analysis with R (I): Summarization</span>"
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
# :::::: nonincremental
# ::::: columns
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# - Lesson 07 Exercise Review
# 
# - Lesson Question!
# 
# - Course Learning Milestones
# 
# - The 8 Key Steps of a Data Mining Project
# 
# :::
# 
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# - Data Mining
# 
# - Exploratory Data Analysis (EDA)
# 
# - Obtaining Summary Statistics with R
# 
# :::
# :::::
# ::::::
# 
# # Lesson 07 Exercises Review {background-color="#cfb991"}
# 
# # Lesson Question! {background-color="#cfb991"}
# 
# # Course Learning Milestones {background-color="#cfb991"}
# 
# ## Course Learning Milestones
# 
# <center>![](figs/13_course_learning_milestones.jpg){width="60%"}</center>
# 
# 
# # The 8 Key Steps of a Data Mining Project {background-color="#cfb991"}
# 
# ## The 8 Key Steps of a Data Mining Project
# 
# <br>
# 
# :::::: {.columns}
# ::: {.column width="33%"}
# ### Goal Setting
# 
# 1. **Define the project’s goal**  
# :::
# 
# ::: {.column width="33%"}
# ### Data Understanding
# 
# 2. **Acquire analysis tools**  
# 3. **Prepare data**  
# 4. **Data summarization**  
# 5. **Data visualization**  
# :::
# 
# ::: {.column width="33%"}
# ### Insights
# 
# 6. **Data mining modeling**  
# 7. **Model validation**  
# 8. **Interpretation and implementation**  
# 
# :::
# ::::::
# 
# # Data Mining {background-color="#cfb991"}
# 
# ## Data Mining
# 
# <br>
# 
# - **Exploratory Data Analysis (EDA)**: EDA is the Data Mining initial step. It involves the examination and analysis of datasets to gain an understanding of the actual and potential aspects of the data using summarization and visualization techniques.
# 
# - **Inferential Data Analysis**: In contrast, this step refines available data, identifying valuable information such as potential patterns, relationships, trends, and assessing their reliability.
# 
# <br>
# 
# # Exploratory Data Analysis (EDA) {background-color="#cfb991"}
# 
# ## Exploratory Data Analysis (EDA)
# 
# <br>
# 
# - **EDA aids analysts** in comprehending the available data and serves as a means to detect potential data issues, such as missing values, outliers, or inconsistencies.
# 
# - EDA primarily comprises two main categories:
# 
# 1. **Data Summarization**: Involves obtaining summary statistics.
# 
# 2. **Data Visualization**: Entails presenting raw data or summary statistics through plots.
# 
# <!---
# # The History of Summary Statistics {background-color="#cfb991"}
# 
# ## The History of Summary Statistics
# 
# The concept of summary statistics has its origins in ancient times, with early civilizations collecting and analyzing data. However, the formal development and systematic application of summary statistics emerged during the 19th and 20th centuries, thanks to significant contributions from statisticians and mathematicians.
# 
# ## Mid-20th Century Developments
# 
# The mid-20th century witnessed the development of computers and the growth of data-driven disciplines, which further popularized the application of summary statistics. 
# 
# Statisticians and researchers began to formalize and expand the range of summary statistics available for different types of data.
# 
# ## Late 20th Century to Present
# 
# The late 20th century saw the proliferation of statistical software and spreadsheet tools, facilitating the widespread use of summary statistics across various fields. 
# 
# As data analysis continues to evolve, summary statistics remain a fundamental tool for efficiently understanding and interpreting data.
# 
# --->
# 
# # Obtaining Summary Statistics with R {background-color="#cfb991"}
# 
# ## Obtaining Summary Statistics with R
# 
# Summary statistics, often referred to as descriptive statistics, encompass various measures, including those of:
# 
# - **Central tendency** (e.g., mean, median, mode)
# 
# - **Measures of dispersion** (e.g., variance, standard deviation, range)
# 
# - **Measures of shape** (e.g., skewness, kurtosis)
# 
# ::: {.fragment}
# 
# These summary statistics provide specific insights into data distribution and characteristics. They are indispensable in data analysis across domains like statistics, data science, social sciences, finance, and business. 
# 
# :::
# 
# ## Purposes of Descriptive Statistics in Data Mining
# 
# Descriptive statistics serve multiple purposes, including:
# 
# 1. **Summarizing data**: This involves calculating summary statistics for variables, such as mean, median, standard deviation, and frequency distribution.
# 
# ::: {.fragment}
# 
# In R, you can use functions like:
# 
# ```{r, echo=TRUE, eval=FALSE}
# summary(), mean(), median(), and table()
# ```
# 
# to summarize data.
# 
# 2. **Exploring relationships**: This involves exploring relationships between two or more variables to identify correlations or associations.
# 
# :::
# ::: {.fragment}
# 
# In R, you can use functions like:
# 
# ```{r, echo=TRUE, eval=FALSE}
# cor() and cov()
# ```
# 
# to obtain relationship-related summary statistics.
# 
# :::
# 
# ## Understanding Summary Statistics for Different Data Types
# 
# Different data types may require distinct descriptive statistics. 
# 
# - **Numeric variables** have statistics like mean, median, variance, etc.
# 
# - **Categorical data** have meaningful statistics like count and proportion.
# 
# ::: {.fragment}
# 
# When applying the `R` function `summary()` to variable(s), it automatically generates descriptive statistics tailored to the data type. For character data, which is not meant for calculation, no descriptive statistics are generated.
# 
# :::
# 
# # Exploring the `mtcars` Dataset in `R` {background-color="#cfb991"}
# 
# ## Exploring the `mtcars` Dataset in `R`
# 
# To explore the `mtcars` dataset, you can:
# 
# - Open the `CarDataMining` script created in previous lessons.
# 
# - Add and run the following code.
# 
# ::: {.fragment}
# 
# ```{r, echo=TRUE, eval=FALSE}
 
summary(mtcars)
 
# ```
# 
# This code obtains a set of summary statistics for all variables in the data file.
# 
# :::
# 
# ## Comparing Summary Statistics for Numeric and Categorical Variables
# 
# <br>
# 
# You can compare summary statistics that `R` generates for numeric and categorical variables:
# 
# <br>
# 
# ```{r, echo=TRUE, eval=FALSE}

mtcars$am1 <- as.factor(mtcars$am)

summary(mtcars$am1)

# ```
# 
# <br>
# 
# Since the variable `am` is numerical and `am1` is defined as categorical, `summary()` produces different statistics for them.
# 
# 
# ## Calculating Specific Summary Statistics in R
# 
# - To calculate the average horse power of all cars:
# 
# ::: {.fragment}
# 
# ```{r, echo=TRUE, eval=FALSE}

mean(mtcars$hp)

# ```
# 
# - To obtain counts of automatic or manual cars:
# 
# :::
# 
# ::: {.fragment}
# 
# ```{r, echo=TRUE, eval=FALSE}

table(mtcars$am)

# ```
# 
# - To explore relationships between variables:
# 
# ::: 
# ::: {.fragment}
# 
# ```{r, echo=TRUE, eval=FALSE}

cor(mtcars$mpg, mtcars$hp)

# ```
# 
# :::
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
# - **Exploratory Data Analysis (EDA)** is a crucial first step in the data mining process.
# 
# - It involves understanding and summarizing the main characteristics of a dataset.
# 
# - **Two primary categories** of EDA:
# 
# - **Data Summarization**: Involves generating descriptive statistics.
# 
# 1. **Summarizing data**: Providing a concise overview of variables. Summary statistics include **measures of central tendency**, **dispersion**, and **shape**.
# 
# 2. **Exploring relationships**: Identifying correlations and associations between variables.
# 
# - **Data Visualization**: Helps in visualizing data patterns and insights.
# 
# - **R functions** like `summary()`, `mean()`, `median()`, `table()`, `cor()`, and `cov()` are used to explore data and identify key statistics.
# 
# :::
# ::::
# 
# # Thank you! {background-color="#cfb991"}
# 
# # title: "<span style = 'font-size: 100%;'> MGMT 17300: Data Mining Lab </span>"
# # subtitle: "<span style = 'font-size: 150%;'>Exploratory Data Analysis with R (I): Summarization</span>"
# # author: "Professor: Davi Moreira"
# # date: "2024-08-01"
# # date-format: "MMMM DD, YYYY"
# # format:
# # revealjs: 
# # transition: slide
# # background-transition: fade
# # width: 1600
# # height: 900
# # center: true
# # slide-number: true
# # incremental: true
# # chalkboard: 
# # buttons: false
# # preview-links: auto
# # #logo: images/quarto.png
# # footer: "Data Mining Lab"
# # theme: [simple,custom.scss]
# # ---
# # 
# # ## Overview
# # 
# # :::::: nonincremental
# # ::::: columns
# # ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# # - Lesson 07 Exercise Review
# # 
# # - Lesson Question!
# # 
# # - Course Learning Milestones
# # 
# # - The 8 Key Steps of a Data Mining Project
# # 
# # :::
# # 
# # ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# # - Data Mining
# # 
# # - Exploratory Data Analysis (EDA)
# # 
# # - Obtaining Summary Statistics with R
# # 
# # :::
# # :::::
# # ::::::
# # 
# # # Lesson 07 Exercises Review {background-color="#cfb991"}
# # 
# # # Lesson Question! {background-color="#cfb991"}
# # 
# # # Course Learning Milestones {background-color="#cfb991"}
# # 
# # ## Course Learning Milestones
# # 
# # <center>![](figs/13_course_learning_milestones.jpg){width="60%"}</center>
# # 
# # 
# # # The 8 Key Steps of a Data Mining Project {background-color="#cfb991"}
# # 
# # ## The 8 Key Steps of a Data Mining Project
# # 
# # <br>
# # 
# # :::::: {.columns}
# # ::: {.column width="33%"}
# # ### Goal Setting
# # 
# # 1. **Define the project’s goal**  
# # :::
# # 
# # ::: {.column width="33%"}
# # ### Data Understanding
# # 
# # 2. **Acquire analysis tools**  
# # 3. **Prepare data**  
# # 4. **Data summarization**  
# # 5. **Data visualization**  
# # :::
# # 
# # ::: {.column width="33%"}
# # ### Insights
# # 
# # 6. **Data mining modeling**  
# # 7. **Model validation**  
# # 8. **Interpretation and implementation**  
# # 
# # :::
# # ::::::
# # 
# # # Data Mining {background-color="#cfb991"}
# # 
# # ## Data Mining
# # 
# # <br>
# # 
# # - **Exploratory Data Analysis (EDA)**: EDA is the Data Mining initial step. It involves the examination and analysis of datasets to gain an understanding of the actual and potential aspects of the data using summarization and visualization techniques.
# # 
# # - **Inferential Data Analysis**: In contrast, this step refines available data, identifying valuable information such as potential patterns, relationships, trends, and assessing their reliability.
# # 
# # <br>
# # 
# # # Exploratory Data Analysis (EDA) {background-color="#cfb991"}
# # 
# # ## Exploratory Data Analysis (EDA)
# # 
# # <br>
# # 
# # - **EDA aids analysts** in comprehending the available data and serves as a means to detect potential data issues, such as missing values, outliers, or inconsistencies.
# # 
# # - EDA primarily comprises two main categories:
# # 
# # 1. **Data Summarization**: Involves obtaining summary statistics.
# # 
# # 2. **Data Visualization**: Entails presenting raw data or summary statistics through plots.
# # 
# # <!---
# # # The History of Summary Statistics {background-color="#cfb991"}
# # 
# # ## The History of Summary Statistics
# # 
# # The concept of summary statistics has its origins in ancient times, with early civilizations collecting and analyzing data. However, the formal development and systematic application of summary statistics emerged during the 19th and 20th centuries, thanks to significant contributions from statisticians and mathematicians.
# # 
# # ## Mid-20th Century Developments
# # 
# # The mid-20th century witnessed the development of computers and the growth of data-driven disciplines, which further popularized the application of summary statistics. 
# # 
# # Statisticians and researchers began to formalize and expand the range of summary statistics available for different types of data.
# # 
# # ## Late 20th Century to Present
# # 
# # The late 20th century saw the proliferation of statistical software and spreadsheet tools, facilitating the widespread use of summary statistics across various fields. 
# # 
# # As data analysis continues to evolve, summary statistics remain a fundamental tool for efficiently understanding and interpreting data.
# # 
# # --->
# # 
# # # Obtaining Summary Statistics with R {background-color="#cfb991"}
# # 
# # ## Obtaining Summary Statistics with R
# # 
# # Summary statistics, often referred to as descriptive statistics, encompass various measures, including those of:
# # 
# # - **Central tendency** (e.g., mean, median, mode)
# # 
# # - **Measures of dispersion** (e.g., variance, standard deviation, range)
# # 
# # - **Measures of shape** (e.g., skewness, kurtosis)
# # 
# # ::: {.fragment}
# # 
# # These summary statistics provide specific insights into data distribution and characteristics. They are indispensable in data analysis across domains like statistics, data science, social sciences, finance, and business. 
# # 
# # :::
# # 
# # ## Purposes of Descriptive Statistics in Data Mining
# # 
# # Descriptive statistics serve multiple purposes, including:
# # 
# # 1. **Summarizing data**: This involves calculating summary statistics for variables, such as mean, median, standard deviation, and frequency distribution.
# # 
# # ::: {.fragment}
# # 
# # In R, you can use functions like:
# # 
# # ```{r, echo=TRUE, eval=FALSE}
# # summary(), mean(), median(), and table()
# # ```
# # 
# # to summarize data.
# # 
# # 2. **Exploring relationships**: This involves exploring relationships between two or more variables to identify correlations or associations.
# # 
# # :::
# # ::: {.fragment}
# # 
# # In R, you can use functions like:
# # 
# # ```{r, echo=TRUE, eval=FALSE}
# # cor() and cov()
# # ```
# # 
# # to obtain relationship-related summary statistics.
# # 
# # :::
# # 
# # ## Understanding Summary Statistics for Different Data Types
# # 
# # Different data types may require distinct descriptive statistics. 
# # 
# # - **Numeric variables** have statistics like mean, median, variance, etc.
# # 
# # - **Categorical data** have meaningful statistics like count and proportion.
# # 
# # ::: {.fragment}
# # 
# # When applying the `R` function `summary()` to variable(s), it automatically generates descriptive statistics tailored to the data type. For character data, which is not meant for calculation, no descriptive statistics are generated.
# # 
# # :::
# # 
# # # Exploring the `mtcars` Dataset in `R` {background-color="#cfb991"}
# # 
# # ## Exploring the `mtcars` Dataset in `R`
# # 
# # To explore the `mtcars` dataset, you can:
# # 
# # - Open the `CarDataMining` script created in previous lessons.
# # 
# # - Add and run the following code.
# # 
# # ::: {.fragment}
# # 
# # ```{r, echo=TRUE, eval=FALSE}
# # 
# # summary(mtcars)
# # 
# # ```
# # 
# # This code obtains a set of summary statistics for all variables in the data file.
# # 
# # :::
# # 
# # ## Comparing Summary Statistics for Numeric and Categorical Variables
# # 
# # <br>
# # 
# # You can compare summary statistics that `R` generates for numeric and categorical variables:
# # 
# # <br>
# # 
# # ```{r, echo=TRUE, eval=FALSE}
# # 
# # mtcars$am1 <- as.factor(mtcars$am)
# # 
# # summary(mtcars$am1)
# # 
# # ```
# # 
# # <br>
# # 
# # Since the variable `am` is numerical and `am1` is defined as categorical, `summary()` produces different statistics for them.
# # 
# # 
# # ## Calculating Specific Summary Statistics in R
# # 
# # - To calculate the average horse power of all cars:
# # 
# # ::: {.fragment}
# # 
# # ```{r, echo=TRUE, eval=FALSE}
# # 
# # mean(mtcars$hp)
# # 
# # ```
# # 
# # - To obtain counts of automatic or manual cars:
# # 
# # :::
# # 
# # ::: {.fragment}
# # 
# # ```{r, echo=TRUE, eval=FALSE}
# # 
# # table(mtcars$am)
# # 
# # ```
# # 
# # - To explore relationships between variables:
# # 
# # ::: 
# # ::: {.fragment}
# # 
# # ```{r, echo=TRUE, eval=FALSE}
# # 
# # cor(mtcars$mpg, mtcars$hp)
# # 
# # ```
# # 
# # :::
# # 
# # 
# # # Summary {background-color="#cfb991"}
# # 
# # ## Summary
# # 
# # :::: nonincremental
# # ::: {style="font-size: 80%;"}
# # Main Takeaways from this lecture:
# # 
# # - **Exploratory Data Analysis (EDA)** is a crucial first step in the data mining process.
# # 
# # - It involves understanding and summarizing the main characteristics of a dataset.
# # 
# # - **Two primary categories** of EDA:
# # 
# # - **Data Summarization**: Involves generating descriptive statistics.
# # 
# # 1. **Summarizing data**: Providing a concise overview of variables. Summary statistics include **measures of central tendency**, **dispersion**, and **shape**.
# # 
# # 2. **Exploring relationships**: Identifying correlations and associations between variables.
# # 
# # - **Data Visualization**: Helps in visualizing data patterns and insights.
# # 
# # - **R functions** like `summary()`, `mean()`, `median()`, `table()`, `cor()`, and `cov()` are used to explore data and identify key statistics.
# # 
# # :::
# # ::::
# # 
# # # Thank you! {background-color="#cfb991"}
