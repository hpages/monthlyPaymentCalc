\name{monthlyPaymentCalc}
\docType{package}

\alias{monthlyPaymentCalc}
\alias{monthlyPaymentCalc-package}
\alias{monthly_payment}

\title{Calculate the monthly payment of a mortgage}

\description{
  Calculate the monthly payment of a mortgage.
}

\usage{
monthly_payment(LA, months, IR=0)
}

\arguments{
  \item{LA}{
    Loan Amount
  }
  \item{months}{
    Number of months in the mortgage term e.g. 180 for a 15-yr term.
  }
  \item{IR}{
    Interest Rate e.g. 2.5 for 2.5\%.
    Do NOT use the APR (Annual Percentage Rate).
  }
}

\value{
  The monthly payment of the mortgage. This is the Principal & Interest part
  only i.e. it does not include other things that get usually included in
  the final monthly payment, like home insurance, real estate taxes, or
  mortgage insurance.
}

\examples{
## Compare the monthly payments (Principal & Interest part only)
## between a 30-yr vs 20-yr term for a $200,000 mortgage.

## With an interest rate of 4%:
monthly_payment(200000, months=360, IR=4)  #  $955/month
monthly_payment(200000, months=240, IR=4)  # $1212/month

## With an interest rate of 3%:
monthly_payment(200000, months=360, IR=3)  #  $843/month
monthly_payment(200000, months=240, IR=3)  # $1109/month
}
\keyword{manip}
\keyword{package}
