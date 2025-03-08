install.packages("ggplot2")
library(ggplot2)
"agglomarative clustering"
clusters <-hclust(dist(iris[,3:4]))
plot(clusters)
clusterCut <-cutree(clusters,3)
table(clusterCut,iris$Species)
ggplot(iris,aes(Petal.Length,Petal.Width,color = iris$Species)) + 
  geom_point(alpha = 0.4,size =3.5) + geom_point(col = clusterCut) + 
  scale_color_manual(values = c('black','red','green'))
clusters <-hclust(dist(iris[,3:4]),method = 'average')
clusterCut1 <-cutree(clusters,3)
table(clusterCut1,iris$Species)
plot(clusters)
ggplot(iris,aes(Petal.Length,Petal.Width,color = iris$Species)) + 
  geom_point(alpha = 0.4,size =3.5) + geom_point(col = clusterCut1) + 
  scale_color_manual(values = c('black','red','green'))
