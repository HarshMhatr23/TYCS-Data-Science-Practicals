library(ggplot2)
data(iris)
X <-iris[,1:4]
pca_result <-prcomp(X,center=TRUE,scale.=TRUE)
summary(pca_result)
biplot(pca_result,main = "PCA Biplot of iris Dataset")
pca_data <-data.frame(pca_result$x,Species = iris$Species)
ggplot(pca_data,aes(x=PC1,y=PC2,color = Species))+geom_point()+
  labs(title = "PCA of iris Dataset", x = "Principle Component 1", y = "Principle Component 2")
screeplot(pca_result,main = "Scree plot", col = "blue")
