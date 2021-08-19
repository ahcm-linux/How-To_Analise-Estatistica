TukeyTriMean <- function(x) 0.5 * (median(x) + mean(quantile(x, probs = c(0.25, 0.75))))
