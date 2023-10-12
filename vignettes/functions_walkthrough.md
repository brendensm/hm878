---
title: "HM878 Functions Walk Through"
output: rmarkdown::html_vignette
vignette: >
  %\VignetteIndexEntry{HM878 Functions Walk Through}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---

```{r, include = FALSE}
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
```

This vignette demonstrates how to use the functions included in this package so far. If you have not yet, install the package with the following code: `devtools::install_github("brendensm/hm878")`. If you do not have the package devtools, be sure to install that first `install.packages("devtools")`.

To start, we load the package, and palmerpenguins for our data. 

```{r setup}
library(hm878)
library(dplyr)
```

Let's assume we are running a binomial logistic regression using the data from the package palmerpenguins. We will use sex as the dependent variable, and species, island, bill_length_mm, bill_depth_mm, flipper_length_mm, and body_mass_g as the independent variables. We will store our models for block 1 and block 2.

```{r}

mb1 <- glm(vs ~ 1, data = mtcars, family = "binomial")

mb2 <- glm(vs ~ cyl, data = mtcars, family = "binomial")

chi_log(mb1, mtcars, "Block 1")
chi_log(mb2, mtcars, "Block 2")

predict_percent(mb1, mtcars$vs, "Block 1")
predict_percent(mb2, mtcars$vs, "Block 2")

```

```{r}
fences(mtcars$cyl)

or(mb1)
or(mb2)

compare_models(mb1, mb2, labels = c("Model 1 Block 1", "Model 1 Block 2"))


```


