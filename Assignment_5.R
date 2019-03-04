library(states)
library(stringr)
vowels = c('a','e','i','o','u')
state.name
str(state.name)

# vector for storing results
num_vowels = vector(mode = "integer", length = 5)
# calculate number of vowels in each name
for (i in seq_along(vowels)) {
  num_aux = str_count(tolower(state.name), vowels[i])
  num_vowels[i] = sum(num_aux)
}

names(num_vowels) = vowels# add vowel names
num_vowels
sort(num_vowels, decreasing = TRUE)

barplot(num_vowels, main = "Number of Vowels in USA States Names",
        border = NA, ylim = c(0, 80))