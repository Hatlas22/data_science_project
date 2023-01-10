library(ggplot2)

#2.2
#Question 1

dim(data)

#Question 2

sum(is.na(data)) #last 4 columns

data = data[1:12]

#Question 3

namecol = as.list(c(colnames(data)[1], colnames(data)[4:12]))

stats = summary(data[namecol])

for (i in namecol) {
  barplot(data[[i]])
  boxplot(data[[i]])
}

ggplot(data, aes(x = status_type,y = num_reactions)) +
  geom_bar(stat = "identity", position = "dodge")

ggsave("num_reactions-statut_type.pdf", width = 15, height = 10)
