# Metadata

https://doi.org/10.1016/j.jml.2018.07.005

raw data: osf.io/drth2

# Methods (Experiment 1)
- participants n = 54
- linear mixed-effects models using the R package lme4
- topic: bilinguals on voluntary code-switching
- trial type group one: blocked vs non-switch
- trial type group one: non-switch vs switch
- language variable: Basque, Spanish

## Models (Experiment 1)
1. mixing costs model
- log(RT) ~ 1 + Language + Trial Type + Language × Trial Type + (1 + Language × Trial Type | Participant) + (1 + Language × Trial Type | Item)
- for the factor language, Basque: −0.5, Spanish: 0.5
- for the factor trial type, blocked: -0.5, non-switch: 0.5
- the model examining mixing costs only included non-switch and blocked trials
2. switching costs
- log(RT) ~ 1 + Language + Trial Type + Language × Trial Type + (1 + Language × Trial Type | Participant) + (1 + Language × Trial Type | Item)
- for the factor language, Basque: −0.5, Spanish: 0.5
- for the factor trial type, non-switch: -0.5, switch: 0.5
- the model examining switching costs included non-switch and switch trials

# Results (Experiment 2)
- the authors did not use p values but t values
- in all models, VIFs were below 2.5. T and z values > 2 were interpreted as significant
- mixing costs model: two significant effects
- switching costs model: two significant effects

# Data (Experiment 1)
- RTs more than 2.5 SD above or below the mean (calculated on the log RTs per participant per trial type and language, 2.2% of all correct trials) were removed.
1. mixing costs model
- there was a main effect of trial type (β = −0.066, SE = 0.014, t = −4.746)
- blocked trials RT: (M = 876.2, SD = 98.9)
- non-switch trials RT: (M = 806.6, SD = 112.4)
- there was a main effect of language (β = 0.056, SE = 0.015, t = 3.874)
- Basque trials RT: (M = 812.1, SD = 103.2)
- Spanish trials RT: (M = 868.2, SD = 113.7)
2. switching costs
- there was a main effect of trial type (β = 0.042, SE = 0.007, t = 6.398)
- switch trials RT (M = 852.6, SD = 124.3)
- non-switch trials RT (M = 806.6, SD = 112.4)
- switching trials RT (M = 46.0, SD = 43.4)
- There was a main effect of language (β = 0.049, SE = 0.010, t = 4.889)
- language descriptives not given - take the previous as reference
