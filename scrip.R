install.packages("renv")

renv::init()

install.packages(c("usethis", "renv", "gh"))

usethis::use_git()

usethis::use_github()

usethis::create_github_token()

usethis::edit_r_environ()

library(ggplot2)

actual_returns <- c(0.08, 0.06, 0.05, 0.07, 0.09) # Actual returns of the investment

benchmark_returns <- c(0.07, 0.05, 0.04, 0.06, 0.08) # Returns of the benchmark

dates <- 1:5 # Assuming 5 time periods

data <- data.frame(dates, actual_returns, benchmark_returns)

data <- data.frame(dates, actual_returns, benchmark_returns)

ggplot(data, aes(x = dates)) +
  geom_line(aes(y = actual_returns, color = "Actual Returns")) +
  geom_line(aes(y = benchmark_returns, color = "Benchmark")) +
  labs(x = "Time Period", y = "Returns", title = "Actual Returns vs. Benchmark") +
  scale_color_manual(values = c("Actual Returns" = "blue", "Benchmark" = "red")) +
  theme_minimal()

dates2 <- 1:6