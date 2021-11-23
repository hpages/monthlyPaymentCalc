**monthlyPaymentCalc** is an R package that provides a simple function
for calculating the monthly payment of a mortgage.

Typical use:
```
library(monthlyPaymentCalc)

## Compare the monthly payments (Principal & Interest part only)
## between a 30-yr vs 20-yr term for a $200,000 mortgage.

## With an interest rate of 4%:
monthly_payment(200000, months=360, IR=4)  #  $955/month
monthly_payment(200000, months=240, IR=4)  # $1212/month

## With an interest rate of 3%:
monthly_payment(200000, months=360, IR=3)  #  $843/month
monthly_payment(200000, months=240, IR=3)  # $1109/month
```

To install the package:
```
## Install package remotes with 'install.packages(remotes)' if
## you don't have it already. Then:
library(remotes)
install_github("hpages/monthlyPaymentCalc")
```

