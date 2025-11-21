# Metadata 

https://doi.org/10.1080/13506285.2013.804016


# Data

## Numbers
N_subjects = 60 in total, 20 of each group (20 SKD, LSKD, SKH)
N_trials = 64 in total, 16 per each of four conditions: (low freq, high freq) x (neutral, predictable)

## Explained variables
y_1: first fixation duration (mu ~ 220, y > 0)
y_2: gaze duration = y_1 + some extra (mu ~ 240, y > 0) 
y_3: probability of skipping the target word on first-pass reading (mu ~ 0.15; 0 <= y <= 1)
y_4: probability of regression (mu ~ 0.09, 0 <= y <= 1)
y_5: total time y_5 = y_2 + some extra if y_4; y_5 = y_2 if not y_4 (mu ~ 290, y > 0)

Note that due to correlations between y_1, y_2, y_4 and y_5 the five variables should be computed all at once per trial and subject. y_3 and y_4 not used for the linear models (see Additional analyses (not to implement))

## Explanatory variables
pred:  predictability (categorical: neutral, predictable)
freq:  frequency (categorical: low, high)
group: reader type (categorical: SKD, LSKD, SKH)


# Analysis

## Exclusion criteria
Trial excluded if:
- 3% probability chance (if blink/confound occurred, simulate by excluding trials wiht p=0.03)
- y_1 > mean(y_1) + 2.5 * std(y_1), where mean and std are computed separately for each participant
- y1 < 80ms, (2% of the trials: use this info to compute the std)

## Excluded trials:
- a blink occurred just before, on, or just after the target word (1%)
- fixation time was more than 2.5 standard deviations above the mean for each participant 
- fixation shorter than 80ms 

## Analysis:
Linear-mixed effects models run with lme4 in R
I use the MATLAB notation a * b * c := 1 + a + b + c + a * b + a * c + b * c + a * b * c

They runned the following pipeline for n = [1, 2, 5]
1. compute y_n ~ pred * freq * group + (pred * freq * group | participant) + (pred * freq * group | trial)
2. compute y_n ~ pred * freq * group + (1 | participant) + (1 | trial)
3. compare log-likelihood of the models, use the model with random intercept if its log-likelihood is nor smaller
4. list all non-significant interactions, remove them one by one and rerun the model without it, keep the simpler model if its log-likelihood is nor smaller

Results were deemed significant if |t| ≥ 1.96; |z| ≥ 1.96


## Results

### Number of significant three-way interactions: 
[] + [] + []

### Number of significant two-way interactions: 
[3.6, 1.8] + [2.6, 3.66] + [3.0]

### Number of significant single-regressor interactions
[2.1, 2.4] + [2.3, 4.5, 2.32, 5.32] + [4.2, 4.6]

Main result based on two-way interactions between groups where differences are significant between group 1 and group 2 but no between group 1, and group 3. It would be cool to simulate that pipeline. Single-regressor interactions do not contribute to the main message of the paper.


## Additional analyses (not to implement):
- Generalized linear mixed models (GLMM) in an analogous way to the LME analyses for y_3 and y_4

