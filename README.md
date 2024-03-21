## Regression Modelling (Part 1)

### About:

This assignment/project aims to develop skills in performing linear regressionanalysis and accurately interpreting the results. You will be asked to describe your data, fit univariable and multivariable linear regression models, write down fitted equations and interpret the results in text.

### Data: 

This data is coming from a cohort of individuals living with HIV. These individuals had failed or 
were intolerant of zidovudine therapy (AZT). 

Link: https://github.com/nokwandatheanalyst/Masters-data-projects/blob/66ad3885dbc1e6e82c38dbadadaa976a81767cf2/BiostatII_2022_Assign1_data.46.csv

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

R Code Link : https://github.com/nokwandatheanalyst/Masters-data-projects/blob/a8acf1986bc1361ec20c3a262e2a2f5cc119e1c2/R_Scode_Assign1.txt

## Regression modelling (Part 2)

### About:

Different factors affect what an individual needs from a medical aid scheme, and these change over time. For this reason, some individuals tend to review their existing medical aid cover periodically and compare it with other medical aid schemes. Data from medical aid scheme records were available. 

The goal of the assignment/project is to develop some capability in carrying out and interpreting logistic regression models and the data they arise from

### Data:

This data looks at what factors increase the likelihood that individuals will change to a different medical aid scheme if provided information that the current medical aid scheme they use no longer meet their needs. 

Link: https://github.com/nokwandatheanalyst/Masters-data-projects/blob/51dc3184ed508ef3cbc6feb66106f73d04303aa8/Assign2_data.51.csv

### Outcomes:
The outcome variable ‘med_scheme’ is a binary indicator coded as 1 if there was a change from the current to a different medical aid scheme and 0 if there was no change. 

### Exposure:

● The main exposure was an individual’s perceived state of health (‘perceived_health’ coded as very poor, poor, good, and very good). 

### Variables of interest:

● Potential factors impacting the likelihood of changing were:

● charges – individual’s monthly cost billed by medical aid scheme 

● spouse – yes or no

● sex – sex of primary beneficiary (male or female)

● ages – age of primary beneficiary

## Regression modelling (Part 3)

### About:
The goal of this assignment/project is to demonstrate that you can apply two methods of survival analysis to some real-world data and accurately interpret the results. You will be asked to plot Kaplan-Meier curves, perform formal tests to explore group differences, fit univariable and multivariable Cox regression models, and interpret the results

### Data:

The data come from a multi-hospital study of adult individuals with critical, acute conditions such as acute respiratory failure and multiple organ system failure.

Link:https://github.com/nokwandatheanalyst/Masters-data-projects/blob/31738efbf3f7ba69e37b84227e769728b284d56f/Assign3_data.51.csv

### Outcome:
The primary outcome was time until death. Potential prognostic factors, both demographic and lab results, were available. 

### Variables of interest:
A description of variables in the dataset follows:

• Death - indicator for death, coded as 1 for death; and 0 alive

• Time - time (days)

• Income - monthly income coded as under R11k, R11-R25k, R25-R50k and >R50k

• NCom - Number of comorbidities coded as low, medium, and high

• Age - age (years) at beginning of the study 

• MAP: Mean arterial pressure (mmHg)

• Pulse: Heart rate (beats/minute)

• Crea: Serum creatine (mg/dL)

R Code Link: https://github.com/nokwandatheanalyst/Masters-data-projects/blob/31738efbf3f7ba69e37b84227e769728b284d56f/R_Code_Assign3.txt

## Survival Analysis

### About:
Bone marrow transplantation is an effective treatment for acute and chronic leukaemia. However, there is considerable mortality associated with bone marrow transplantation including death due to relapse and death due to other causes.

The primary aim of the analysis is to determine if different types of leukaemia are associated with different times to death from relapse or death from other causes.

### Data:
The data consist of patients with leukaemia who underwent bone marrow transplants between 1985 and 1998. Patients were diagnosed with one of three different types of leukaemia: Acute lymphocytic leukaemia, Acute myeloid leukaemia, and Chronic myelogenous leukaemia. 

There are two datasets:
• transplant_demographic_data: contains patient demographic information.

Link: https://github.com/nokwandatheanalyst/Masters-data-projects/blob/13ee39264f06f4cb9c5a9ce759cf43e239f9434c/transplant_demographic_data_38.csv

• transplant_survival_data: contains patient survival information.

Link:https://github.com/nokwandatheanalyst/Masters-data-projects/blob/0058bc9ee305b48ef22fc8885a800d4d143bdec7/transplant_survival_data_38.csv

### Outcomes:
Death due to relapse and other causes stratified by the different leukaemia disease

## Variables of interest:
• id: patient identifier

• time: time to event or time to censoring (days)

• status: event status 0 = censored, 1 = death from relapse, 2 = death from other causes

• transplant_reason: type of leukaemia (Acute lymphocytic leukaemia, Acute myeloid leukaemia, and Chronic myelogenous leukaemia)

• same_sex: if the donor and recipient were the same sex

• t_cell_depletion: if there was a reduction in T cells

• age of the patient at transplantation (years)

R Code: https://github.com/nokwandatheanalyst/Masters-data-projects/blob/c2221e2c330bd3e831796b17ecf2dc280c6634a3/R_Code_Survival.txt
