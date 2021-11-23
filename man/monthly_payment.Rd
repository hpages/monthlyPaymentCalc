\name{monthly_payment}

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
    Number of months in the mortgage term e.g. 180 for 15-yr term.
  }
  \item{IR}{
    Interest Rate e.g. 2.5 for 2.5\%.
    Do NOT use the APR (Annual Percentage Rate).
  }
}

\value{
  The monthly payment of the mortgage. This is the Principal & Interest part
  only i.e. it does not include other things usually include in the monthly
  payment like home insurance, real estate taxes, or mortgage insurance.
}

\examples{
## Monthly payment (Principal & Interest part only) for a $200,000
## mortgage with a 30-yr term and 3% interest rate:
monthly_payment(350000, months=360, IR=3)  # $1475.6/month
}
\keyword{manip}
