

# Debruin 2018; only Exp 1 included; 

# data: RTs as depVar, fixed1 categorical with 2 levels, fixed2 categorical with 3 levels
# RT max = 2500ms (time out)

# example data for testing - ignore
# set.seed(123)
# data <- data.frame(
#   subject = rep(paste0("S", 1:10), each = 6),
#   item    = rep(paste0("I", 1:60), times = 4),
#   fixed1  = rep(rep(c("level1", "level2"), each = 3), times = 4),
#   fixed2  = rep(c("level1", "level2", "level3"), times = 8),
#   depVar  = round(rnorm(24, mean = 500, sd = 10), 0)   # simple RT values
# )
# data <- data[rep(seq_len(nrow(data)), each = 10), ]
# data

#####################

# packages
library(dplyr)
library(lmerTest)

# preprocessing:

# 1. log transform rts

data$depVar <- log(data$depVar)

# 2. remove logRTs more than 2.5 SD above or below the mean (per participant (subject) per trial type (fixed2) and language (fixed1))

# dataX <- data %>%
#   mutate(z = (depVar - mean(depVar, na.rm = TRUE)) / sd(depVar, na.rm = TRUE)) %>%
#   filter(abs(z) <= 2.5)

data2 <- data %>%
  group_by(subject, fixed2, fixed1) %>%        # compute mean & SD within each combination
  mutate(
    z = (depVar - mean(depVar, na.rm = TRUE)) /
      sd(depVar,  na.rm = TRUE)
  ) %>%
  ungroup() %>%
  filter(abs(z) <= 2.5)

# 3. Model 1: Mixing costs

# set up vars and remove one level from fixed1
#(only analyse the nonswitch and blocked trials)

data2 <- data

data2$fixed1 <- as.factor(data2$fixed1) #language

data2$fixed2 <- as.factor(data2$fixed2)
data2 <- subset(data2, data2$fixed2 == "level1" | data2$fixed2 == "level2")

# Sum-to-zero contrasts

# fixed1 = Language; ???0.5, 0.5
# fixed2 = TrialType;  -0.5, 0.5

contrasts(data2$fixed1) <- contr.sum(2)
contrasts(data2$fixed2) <- contr.sum(2)

# Model

model = lmer(depVar~fixed1*fixed2 + (1+fixed1*fixed2|participant) + (1+fixed1*fixed2 |item), REML = TRUE, data = data2)

# 4. Mode 2: Switching costs
#(only analyse the nonswitch and switch trials)

data3 <- data
data3$fixed1 <- as.factor(data3$fixed1) #language
data3$fixed2 <- as.factor(data3$fixed2)
data3 <- subset(data3, data3$fixed2 == "level3" | data3$fixed2 == "level2")

# Sum-to-zero

contrasts(data3$fixed3) <- contr.sum(2)
contrasts(data3$fixed2) <- contr.sum(2)

# Model

model = lmer(depVar~fixed1*fixed2 + (1+fixed1*fixed2|participant) + (1+fixed1*fixed2 |item), REML = TRUE, data = data3)


