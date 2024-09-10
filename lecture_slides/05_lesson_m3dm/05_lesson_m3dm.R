# ---
# title: "<span style = 'font-size: 100%;'> MGMT 17300: Data Mining Lab </span>"
# subtitle: "<span style = 'font-size: 150%;'>  Installing Packages and Importing Data in R</span>"
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
# 
# ## Overview
# 
# ::: nonincremental
# ::: columns
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# - **R Packages and Their Importance**
# - Installing and loading `R` packages
# - Using popular packages like `ggplot2`, `dplyr`, and `tidyr`
# 
# - **Data Import in `R`**
# - Importing data from text files, Excel sheets, CSV files, and SQL databases
# 
# :::
# ::: {.column width="50%" style="text-align: center; justify-content: center; align-items: center;"}
# 
# - **Exporting Data from `R`**
# - Exporting data to CSV files, Excel files, and text files
# - Saving `R`-specific objects using RDS files
# 
# :::
# :::
# :::
# 
# # `R` Packages {background-color="#cfb991"}
# 
# ## `R` Packages and Their Importance
# 
# <br>
# 
# `R`  functionality is enhanced by **packages**—which are like "apps" in the smartphone ecosystem.
# 
# ```{r eval=FALSE, echo=TRUE}
# Example of installing a package
install.packages("readxl")

# Loading a package to use its functions
library(readxl)
# ```
# ## The Tidyverse Project
# 
# <br>
# 
# <br>
# 
# >In space, no one can hear you scream.
# >
# >– Alien (1979)
# 
# <br>
# 
# <br>
# 
# ## The Tidyverse Project
# 
# <center>[![Tidyverse Project](figs/tidyverse_hex_logo.png){width="30%"}](https://www.tidyverse.org/){target="_blank"}</center>
# 
# The tidyverse is a collection of R packages designed for data science. All packages share an underlying philosophy and common APIs.
# 
# ## The Tidyverse Data Science Workflow
# 
# <center>![Tidyverse Project](figs/data_science_workflow_pkgs.png){width="70%"}</center>
# 
# 
# 
# 
# 
# ## Installing Packages
# 
# <br>
# 
# You can install packages in two ways:
# 
# 1. **Using the `R` command line** with `install.packages()`
# 2. **Using `RStudio`**, by navigating to the "Packages" tab and searching for the desired package.
# 
# ::: {.fragment}
# 
# ```{r eval=FALSE, echo=TRUE}
# Installing multiple packages at once
install.packages(c("readxl", "ggplot2"))
# ```
# 
# :::
# 
# ## Loading Packages
# 
# <br>
# 
# After installation, you must load a package to use it:
# 
# ```{r eval=FALSE, echo=TRUE}
# Loading the readxl package
library(readxl)
# ```
# 
# <br>
# 
# > **Note**: Some commonly used packages for data analysis are `ggplot2`, `dplyr`, and `tidyr`.
# 
# # Data Import in `R` {background-color="#cfb991"}
# 
# ## Data Import in `R`
# 
# <br>
# 
# `R` allows importing data from various file formats like **text files**, **Excel sheets**, **CSV files**, and **SQL databases**.
# 
# ## Importing Text Files
# 
# <br>
# 
# ```{r eval=FALSE, echo=TRUE}
# # Importing a text file
# data <- read.table("data.txt", header = TRUE, sep = ",")
# ```
# 
# ## Importing Excel Files
# 
# <br>
# 
# Make sure you have the `readxl` package installed:
# 
# ```{r eval=FALSE, echo=TRUE}
# Importing data from an Excel file
library(readxl)
data <- read_excel("data/SalesData.xlsx")
# ```
# 
# <br>
# 
# To import a specific sheet:
# 
# ```{r eval=FALSE, echo=TRUE}
# # Importing a specific sheet from an Excel file
# data <- read_excel("c:/mydata/data.xlsx", sheet = "Sheet1")
# ```
# 
# ## Importing CSV Files
# 
# <br>
# 
# `CSV` files are commonly used and can be easily imported using `read.csv()`:
# 
# ```{r eval=FALSE, echo=TRUE}
# # Importing data from a CSV file
# data <- read.csv("data.csv")
# ```
# 
# ## Importing Data from `SQL` Databases
# 
# <br>
# 
# To import data from a `SQL` database, you can use the `RODBC` package:
# 
# ```{r eval=FALSE, echo=TRUE}
# # Importing from SQL database
# library(RODBC)
# conn <- odbcConnect("database_name")
# data <- sqlQuery(conn, "SELECT * FROM table_name")
# odbcClose(conn)
# ```
# 
# <br>
# 
# > **Note**: For this course, we will primarily focus on importing data from Excel spreadsheets.
# 
# # Exporting Data from `R` {background-color="#cfb991"}
# 
# ## Exporting Data from `R`
# 
# <br>
# 
# Once your data analysis is complete, you'll often need to export the data for further use or reporting. `R` provides several ways to export datasets to various formats, including **CSV**, **Excel**, and **text files**.
# 
# 
# ## Exporting Data to `CSV` Files
# 
# <br>
# 
# One of the most common way to export data from `R` is to save it as a `CSV` file using the `write.csv()` function.
# 
# ```{r eval=FALSE, echo=TRUE}
# # Exporting a dataset to a CSV file
# write.csv(data, "output_data.csv", row.names = FALSE)
# ```
# 
# - The first argument is the data you want to export.
# - The second argument is the file name (path) for the exported file.
# - `row.names = FALSE` avoids adding an extra column for row numbers.
# 
# ## Exporting Data to Excel Files
# 
# <br>
# 
# You can export data to Excel using the `writexl` package. First, make sure it's installed.
# 
# ```{r eval=FALSE, echo=TRUE}
# Install the writexl package
install.packages("writexl")

# Exporting a dataset to an Excel file
library(writexl)
write_xlsx(data, "data/output_data.xlsx")
# ```
# 
# <br>
# 
# > **Note**: The `write_xlsx()` function saves the data into an Excel file, and you can specify the file path.
# 
# ## Exporting Data to Text Files
# 
# <br>
# 
# For exporting data to a text file, you can use the `write.table()` function. This is particularly useful when you want to use a delimiter other than commas, such as tabs.
# 
# ```{r eval=FALSE, echo=TRUE}
# # Exporting a dataset to a tab-delimited text file
# write.table(data, "output_data.txt", sep = "\t", row.names = FALSE)
# ```
# 
# - The `sep` argument specifies the delimiter used in the file (in this case, tabs).
# 
# ## Exporting Data to `RDS` Files
# 
# <br>
# 
# RDS is a format specific to `R` that allows you to save `R` objects and reload them later.
# 
# ```{r eval=FALSE, echo=TRUE}
# # Exporting data to an RDS file
# saveRDS(data, "data.rds")
# 
# # Loading the RDS file back into R
# data <- readRDS("data.rds")
# ```
# 
# <br>
# 
# > **Note**: `RDS` files are useful when you want to save R objects for later use within R itself.
# 
# # Summary {background-color="#cfb991"}
# 
# ## Summary
# 
# ::: nonincremental
# 
# - Packages are essential in extending `R`’s functionality.
# 
# - You can install and load packages easily with `install.packages()` and `library()` functions.
# 
# - `R` supports importing data from multiple sources, including text files, `Excel` sheets, `CSV` files, and `SQL` databases.
# 
# - You can export datasets to various formats in R, including **CSV**, **Excel**, **text files**, and **RDS**.
# 
# - `write.csv()` and `write_xlsx()` are common functions for CSV and Excel exports.
# - `write.table()` allows for more customizable exports, such as tab-delimited files.
# - Use `saveRDS()` and `readRDS()` for saving and reloading R-specific objects.
# 
# :::
# 
# # Thank you! {background-color="#cfb991"}
