# Metadata 

https://doi.org/10.3389/fpsyg.2010.00238


# Data

## Numbers
N_subjects = 61
N_trials = 600 in total, 120 catch trials, 480 critical trials. From the 480, 336 were VAL, 48 SOD, 48 DOS, 48 DOD.

## Explained variables
RT: reaction time (mean ~ 380, std ~ 90)

## Explanatory variables
Trials are either VAL, SOD, DOS, or DOD.
The explanatory variables are built with those conditions:
- c1 = SOD - VALID (= 1 for SOD trials, = -1 for VALID trials, 0 otherwise)
- c2 = DOS - SOD (= 1 for DOS trials, = -1 for SOD trials, 0 otherwise)
- c3 = DOS - DOD (= 1 for DOS trials, = -1 for DOD trials, 0 otherwise)

# Analysis

## Exclusion criteria
Trial excluded if:
- RT < 150 (ms)
- Incorrect responses (total of 2% including the censoring; model as a random dropout)

## Analysis:
Linear-mixed effects models run with lme4 in R

They report effects for the model:
RT ~ 1 + c1 + c2 + c3 + (1 + c1 + c2 + c3 | sub_id)

Results were deemed significant if |t| ≥ 2.4


## Results

### Number of significant contrasts:
2 of 3 (t = [10.2, 6.0, 1.2]) 

