ad_cost_in_thousand <- c(39, 65, 62, 90, 82, 75, 25, 98, 36, 78)
sales_inMillions <- c(47, 53, 58, 86, 62, 68, 60, 91, 51, 84)

# a.
plot(ad_cost_in_thousand, sales_inMillions)
# b.
cor(ad_cost_in_thousand, sales_inMillions)
# c. 
(cor(ad_cost_in_thousand, sales_inMillions))^2