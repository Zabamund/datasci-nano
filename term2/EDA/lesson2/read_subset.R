getwd()
setwd('/Users/geodev/code/daan-nano/term2/EDA/lesson2')

# readscv
statesinfo <- read.csv('stateData.csv')

# create subset based on filter
statesubset <- subset(statesinfo, state.region == 1)
head(statesubset, 2)
dim(statesubset)

# another way to do same:
# DATASET[ROWStoKeep,COLUMNStoKeep]
statesubsetBracket <- statesinfo[statesinfo$state.region == 1, ]
head(statesubsetBracket, 2)
dim(statesubsetBracket)

# another region subsetbracket
region3subset <- statesinfo[statesinfo$state.region == 3, ]
head(region3subset, 3)
dim(region3subset)

# illiteracy
illiteracyFilter <- statesinfo[statesinfo$illiteracy == 0.5, ]
head(illiteracyFilter, 6)
dim(illiteracyFilter)

# 50%+ grad rates
gradRate50 <- subset(statesinfo, highSchoolGrad >= 50)
head(gradRate50, 6)
dim(gradRate50)