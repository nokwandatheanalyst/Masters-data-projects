## Regression Modelling (Part 1)

### Data: 

This data is coming from a cohort of individuals living with HIV. These individuals had failed or 
were intolerant of zidovudine therapy (AZT). The description of variables in the dataset are as 
follows:

### Outcome:

● </li> log10_vload – log base 10 viral load (copies/mL), which is one of the global responses to 
AIDS for improving treatment quality and health outcomes. 

### Covariates of interest:
● patient - patient identifier

● age - measured in years

● sex - a factor with levels female and male

● AZT - a factor with levels intolerance and failure

● drug - antiretroviral drugs, coded as “didanosine (ddI)” and “zalcitabine (ddC)”

● prevOI - previous opportunistic infections coded as “AIDS” and “noAIDS””

## Regression modelling (Part 2)

### About:

Different factors affect what an individual needs from a medical aid scheme, and these change over time. For this reason, some individuals tend to review their existing medical aid cover periodically and compare it with other medical aid schemes. Data from medical aid scheme records were available. 

### Data:

This data looks at what factors increase the likelihood that individuals will change to a different medical aid scheme if provided information that the current medical aid scheme they use no longer meet their needs. 

### Outcomes:
The outcome variable ‘med_scheme’ is a binary indicator coded as 1 if there was a change from the current to a different medical aid scheme and 0 if there was no change. 

## Exposure:

● The main exposure was an individual’s perceived state of health (‘perceived_health’ coded as very poor, poor, good, and very good). 

## Variables of interest:

● Potential factors impacting the likelihood of changing were:

● charges – individual’s monthly cost billed by medical aid scheme 

● spouse – yes or no

● sex – sex of primary beneficiary (male or female)

● ages – age of primary beneficiary

## Regression modelling (Part 3)

### Data:

The data come from a multi-hospital study of adult individuals with critical, acute conditions such as  acute respiratory failure and multiple organ system failure. The primary outcome was time until death. Potential prognostic factors, both demographic and lab results, were available. 

### Outcomes:
A description of variables in the dataset follows:

• Death - indicator for death, coded as 1 for death; and 0 alive

• Time - time (days)

• Income - monthly income coded as under R11k, R11-R25k, R25-R50k and >R50k

• NCom - Number of comorbidities coded as low, medium, and high

• Age - age (years) at beginning of the study 

• MAP: Mean arterial pressure (mmHg)

• Pulse: Heart rate (beats/minute)

• Crea: Serum creatine (mg/dL)
