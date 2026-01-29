# Part 1 - Using Basic R functions

set.seed(123)
x = rnorm(50)
y = 2*x + rnorm(50)

png("scatter_test.png",width = 800)
par(mar=c(4,4,2,2))
plot(x,y,
     pch = 19,
     cex = 5,
     col = "blue",
     xlab = "X value",
     ylab = "Y value",
     main = "Scatter Plot"
     )
dev.off()


# Read the salary data and plot the year of exp vs salary.

df = read.csv("../data/Salary_Data.csv")
head(df)

pdf("exp_vs_sal.pdf")
plot(df$YearsExperience, df$Salary,
     pch = 19,
     cex = 1.5,
     col=adjustcolor("blue",alpha.f = 0.5),
     xlab = "Year of Experience",
     ylab = "Salary ($)"
     )
dev.off()



hist(y)

# boxplot
boxplot(y)


# barchart.
gender = c("M","F","M","F","M","M","M","M","M","F","F","F","F")

gender = factor(gender,levels=c("M","F"))

barplot(table(gender),
        col = c("pink","skyblue"))



# Part 2 - Using ggplot
# install.packages("ggplot2")
# library(ggplot2)
# install.packages("tidyverse")
library(tidyverse)

# grammer of graphics

x = rnorm(50)
y = 2*x + rnorm(50)

df = data.frame(x=x, y = y)
df

ggplot(df,
       mapping = aes(
         x = x ,
         y = y
       ))+
  geom_point() +
  theme_bw()
ggsave("scatter_gg.png")


ggplot(df,
       mapping = aes(
         x = x ,
         y = y
       ))+
  # geom_line() +
  geom_point(color = "blue",size=3,alpha = 0.4)+
  geom_smooth(method = lm, se=FALSE) +
  theme_bw()+
  labs(
    title="Example Scatterplot",
    x = "x value",
    y = "y value"
  )

# install.packages("palmerpenguins")
library(palmerpenguins)

penguins
view(penguins)
summary(penguins)
penguins$year = factor(penguins$year)
summary(penguins)
glimpse(penguins)


penguins %>%
  ggplot(
    aes(
      x =flipper_length_mm,
      y =body_mass_g
    )
  )+
  geom_point(aes(color = species))+
  geom_smooth(method = lm)+
  # geom_text()+
  theme_bw()+
  labs(
    title = "Penguins Body mass vs flipper Length",
    x = "Flipper Length (mm)",
    y = "Body Mass (g)",
    color = "SPECIES"
  )
ggsave("penguin.png")



penguins %>%
  ggplot(
    aes(x = body_mass_g)
  ) +
  geom_histogram(binwidth = 200)


penguins %>%
  ggplot(
    aes(x = body_mass_g, color = species)
  ) +
  geom_density(fill = "lightblue")


penguins %>%
  ggplot(
    aes(x = species, y = body_mass_g)
  )+
  geom_boxplot()


penguins %>%
  ggplot(
    aes(
      x = island
    )
  ) + 
  geom_bar(aes(fill = island)) +
  facet_grid(year~species)





