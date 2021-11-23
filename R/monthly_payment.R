.is_single_number <- function(x) is.numeric(x) && length(x) == 1L && !is.na(x)

### LA: Loan Amount
### months: mortgage term in months
### IR: Interest Rate
monthly_payment <- function(LA, months, IR=0)
{
    if (!.is_single_number(LA) || LA < 0)
        stop("'LA' (Loan Amount) must be a non-negative number")

    if (!.is_single_number(months) || months <= 0)
        stop("'months' (mortgage term in months) must be a positive number")

    if (!.is_single_number(IR) || IR < 0)
        stop("'IR' (Interest Rate) must be a non-negative number")

    if (IR == 0)
        return(LA / months)

    DMGR <- 1 + IR / 100 / 12  # Debt Monthly Growth Rate
    DTG <- DMGR ^ months  # Debt Total Growth
    LA * DTG * (DMGR - 1) / (DTG - 1)
}

