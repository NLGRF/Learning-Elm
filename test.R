 x <- c(1,2,3,4,5,6)   # Create ordered collection (vector)
 y <- x^2              # Square the elements of x
 print(y)              # print (vector) y
[1]  1  4  9 16 25 36
 mean(y)               # Calculate average (arithmetic mean) of (vector) y; result is scalar
[1] 15.16667
 var(y)                # Calculate sample variance
[1] 178.9667
 lm_1 <- lm(y ~ x)     # Fit a linear regression model "y = B0 + (B1 * x)"
                        # store the results as lm_1
 print(lm_1)           # Print the model from the (linear model object) lm_1

Call:
lm(formula = y ~ x)

Coefficients:
(Intercept)            x
     -9.333        7.000

 summary(lm_1)          # Compute and print statistics for the fit
                         # of the (linear model object) lm_1

Call:
lm(formula = y ~ x)

Residuals:
1       2       3       4       5       6
3.3333 -0.6667 -2.6667 -2.6667 -0.6667  3.3333

Coefficients:
            Estimate Std. Error t value Pr(>|t|)
(Intercept)  -9.3333     2.8441  -3.282 0.030453 *
x             7.0000     0.7303   9.585 0.000662 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 3.055 on 4 degrees of freedom
Multiple R-squared: 0.9583,	Adjusted R-squared: 0.9478
F-statistic: 91.88 on 1 and 4 DF,  p-value: 0.000662

 par(mfrow=c(2, 2))     # Request 2x2 plot layout
 plot(lm_1)             # Diagnostic plot of regression model