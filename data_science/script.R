library(ggplot2)

#2.2
#Question 1

dim(data)

#Question 2

sum(is.na(data)) #last 4 columns

data = data[1:12]

#Question 3

namecol = c(colnames(data)[1], colnames(data)[4:12])

stats = summary(data[namecol])

length(data$status_id)

for (i in namecol) {
  x= seq(1,length(data$i))
  y= data$i
  
  data2 <- data.frame(x,y)
  print(ggplot(data2) + geom_point(aes(x=x,y=y)))
  ggsave(paste0("graphs/", i, ".pdf"), width = 15, height = 10)
}

ggplot(data, aes(x = status_type, y = num_reactions)) +
  geom_bar(stat = "identity", position = "dodge")

ggsave("graphs/num_reactions-statut_type.pdf", width = 15, height = 10)
