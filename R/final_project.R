survivalists <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-01-24/survivalists.csv')

gtsummary::tbl_summary( survivalists,
											 by = gender,
											 include = c(season, name, age,
										   city, state, country, result, days_lasted,
											 medically_evacuated, reason_tapped_out,
											 reason_category, team, day_linked_up,
											 profession, url),
											 label = list(
											 	days_lasted ~ "Days Lasted",
											 	medically_evacuated ~ "Medically Evacuated",
											 	reason_tapped_out ~ "Reason for Tapping Out",
											 	reason_category ~ "Reason Category",
											 	day_linked_up ~ "Day Linked Up"))


linear_model <- lm (days_lasted ~ gender + age + season + country, data = survivalists)

tbl_regression(
	linear_model,
	intercept = TRUE,
	label = list(
		gender ~ "Gender",
		age ~ "Age",
		season ~ "Season",
		country ~ "Country"))

hist(survivalists$season)

alone_range <- function (x) {max(x)-min(x)}
 alone_range(survivalists$age)
 alone_range(survivalists$days_lasted)
