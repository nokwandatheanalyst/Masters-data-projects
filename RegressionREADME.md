## Regression Modelling (Part 1)

### Data: 

This data is coming from a cohort of individuals living with HIV. These individuals had failed or were intolerant of zidovudine therapy (AZT). The description of variables in the dataset are as follows:

### Outcome:

● </li> log10_vload – log base 10 viral load (copies/mL), which is one of the global responses to AIDS for improving treatment quality and health outcomes. 

### Covariates of interest:
● patient - patient identifier

● age - measured in years

● sex - a factor with levels female and male

● AZT - a factor with levels intolerance and failure

● drug - antiretroviral drugs, coded as “didanosine (ddI)” and “zalcitabine (ddC)”

● prevOI - previous opportunistic infections coded as “AIDS” and “noAIDS””

## Regression modelling (Part 2)

## About:

Different factors affect what an individual needs from a medical aid scheme, and these change over time. For this reason, some individuals tend to review their existing medical aid cover periodically and compare it with other medical aid schemes. Data from medical aid scheme records were available. 

## Data:

Data looks at what factors increase the likelihood that individuals will change to a different medical aid scheme if provided information that the current medical aid scheme they use no longer meet their needs. 

## Outcome variable :
‘med_scheme’ is a binary indicator coded as 1 if there was a change from the current to a different medical aid scheme and 0 if there was no change. The main exposure was an individual’s perceived state of health (‘perceived_health’ coded as very poor, poor, good, and very good). Potential factors impacting the likelihood of changing were:

• charges – individual’s monthly cost billed by medical aid scheme 

• spouse – yes or no

• sex – sex of primary beneficiary (male or female)

• ages – age of primary beneficiary
