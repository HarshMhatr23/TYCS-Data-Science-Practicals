data(mtcars)
mtcars$mpg_binary <-ifelse(mtcars$mpg > 20,1,0)
model <-glm(mpg_binary ~ wt +hp,data=mtcars,family = binomial)
summary(model)
predictions <-predict(model, type="response")
predicted_class <- ifelse(predictions > 0.5,1.0)
table(predict_class, mtcars$mpg_binary)
library(ggplot2)
ggplot(mtcars,aes(x=wt,y = mpg_binary)) + 
  geom_point()+
  stat_smooth(method = "glm",method.args = list(family= "binomial"),se = FALSE,color="blue")

