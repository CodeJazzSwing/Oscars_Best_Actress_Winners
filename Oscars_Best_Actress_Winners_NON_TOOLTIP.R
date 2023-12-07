library(ggplot2)


oscars <- read.table("C:\\Users\\SE1D2L\\Documents\\R Projects\\Oscars_Best_Actress_Winners\\oscar_age_female.csv", header = TRUE, sep = ";")

# Create the plot
p <- ggplot(oscars, aes(x= X..Year., y=X..Age.)) + 
  geom_point(aes(text = paste("Name: ", X..Name., "<br>Age: ", X..Age., "<br>Movie: ", X..Movie., "<br>Year: ", X..Year.)), color="blue", size=2) + 
  geom_smooth (method="lm", color = "red") + 
  geom_segment(aes(x=X..Year., xend=X..Year., y=0, yend=X..Age.)) +  
  coord_cartesian(ylim=c(21, 80)) + 
  scale_y_continuous(breaks=seq(12, 80)) + 
  scale_x_continuous(breaks=seq(1928, 2022, 5)) + 
  labs(title = "Age of Best Actress Oscars Winners From the Years 1928 to 2022; Source: https://people.sc.fsu.edu/~jburkardt/data/csv/csv.html",
       x ="Year",
       y = "Age") +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())



# Print the plot
print(p)

