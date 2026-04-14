# nolint start

## Comandos básicos
rep(1:3, each = 2)
rep(1:3, times = 3)
rep(1:3, each = 2, times = 3)
rep(1:3, each = 2, times = 3, length.out = 10)

seq(1, 5, by = 2)
seq_len(10)
seq_along(9:15)

sample(LETTERS[1:5], 100, replace = TRUE) -> x

## Matrices
matrix(seq(1, 15, by = 2), nrow = 2)
z <- seq(1:3)
w <- seq(1:3)
z * w
z %*% w
outer(z, w)

# Dataframes

x <- read.csv("https://raw.githubusercontent.com/kloke/book/master/eg2.csv", header = TRUE)
x %>% str()
x %>% count(i0)
x %>% cross_cases(i0)
x %>% cross_cases(i0, cr)
x$i0 %<>% as.factor
x$cr %<>% as.factor

x %>%
  aggregate(y ~ cr + i0, FUN = length) %>%
  xtabs(y ~ cr + i0, data = .) %>%
  chisq.test()

seinfeld %>% str()
s <- seinfeld
s %>% aggregate(viewers ~ season, mean)

qqgraf <- \(x){
  qqnorm(x)
  qqline(x)
}

s %>%
  aggregate(viewers ~ season, mean) %>%
  .$viewers %>%
  qqgraf()

s %>%
  ggplot(aes(season, viewers, group = season)) +
  geom_boxplot(width = .2)


help(qqplot)

# nolint end
