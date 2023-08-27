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





