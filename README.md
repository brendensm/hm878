# hm878
An R package with helpful functions for HM878: Applied Biostatistics for Public Health Practitioners

To install the package run the following line of code:
```r
devtools::install_github("brendensm/hm878")
```

# Main Functions
This package was developed to introduce helper functions for common tasks in the class's assignments. These functions save us some time and energy. Helper functions currently include:
- `or` &mdash; a function to calculate odds ratios and confidence intervals for a logistic regression model
- `chi_log` &mdash; a function to calculate the Pearson's goodness of fit to a logistic regression model
- `predict_percent` &mdash; a function to calculate an accuracy percentage for a logistic regression model based off of predicted probabilities
- `fences` &mdash; a function to calculate the upper and lower fences of a continuous variable
- `compare_models` &mdash; a function to compare output from multiple models

# Examples
To view a complete walkthrough of each function, view the package vignette found [here]("https://brendenmsmith.com/posts/hm878:%20helper%20functions/")
