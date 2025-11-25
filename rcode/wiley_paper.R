
# Paper Wiley https://journals.sagepub.com/doi/full/10.1177/0956797621993111

# participants n = 36
# use lme4
# the significant linear model was letter naming

 
# letter naming: Mean RT with correct responses
# 
# typing: 1,545 ms (SD = 337)
# visual: 1,393 ms (SD = 368)
# writing: 1,308 ms (SD = 235)
# 
# There was a significant difference between the typing and writing conditions (p < .05); The total model R2 was 43%


# (2) Letter Naming: The Letter Naming task was administered immediately following the Letter Recognition task at all time points, and was analyzed in a completely analogous way, except that the First Attempt variable was not included (since no feedback was given). There were two additional covariates: Recognition Accuracy and Recognition RT, corresponding to each participant's mean accuracy and RT (on correct trials) on the Letter Recognition task, specific to the stimulus. In this way, differences in Letter Naming between learning conditions would not be attributable to differences across participants in terms of their speed and accuracy in recognizing the letter-shapes. Formula for RT: log(RT) ~ Condition + Days-to-Post + Number of Sessions + Previous Trial RT + Recognition Accuracy + Recognition RT + (1 + Recognition Accuracy + Recognition RT + Previous Trial RT | participant) + (1 | stimulus). 


# prep vars


log(RT) ~ Condition + #3 levels; means and sd above; cat
  Days-to-Post +  #days since training; cont
  Number of Sessions + #number of traingin sessions; cont
  Previous Trial RT + #rt on prev. trial
  Recognition Accuracy + #letter rec. acc on separate task
  Recognition RT +  #letter rec. RT on separate task
  (1 + Recognition Accuracy + Recognition RT + Previous Trial RT | participant) + 
  (1 | stimulus)

