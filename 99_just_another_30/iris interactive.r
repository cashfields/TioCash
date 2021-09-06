




library(plot3D)
library(plotly)
library(ggplot2)
library(stats)
library(stats4)
library(graphics)
library(crosstalk)
library(rgl)





#attaching the variables
attach(iris)

data(iris)
head(iris)  

# open3d()
# ## glX 
# ##  14
# ##  #plotting a histogram with Sepal.Length variable and storing it in hist
# hist<-plot_ly(x=Sepal.Length,type='histogram')
# 
# #defining labels and title using layout()
# layout(hist,title = "Iris Dataset - Sepal.Length",
#        xaxis = list(title = "Sepal.Length"),
#        yaxis = list(title = "Count"))
# 
# 
# 
# 
# #plotting a Boxplot with Sepal.Length variable and storing it in box_plot
# box_plot<-plot_ly(y=Sepal.Length,type='box',color=Species)
# 
# #defining labels and title using layout()
# layout(box_plot,title = "Iris Dataset - Sepal.Length Boxplot",
#        yaxis = list(title = "Sepal.Length"))
# 
# 
# 
# 
# #plotting a Scatter Plot with Sepal.Length and Sepal.Width variables and storing it in scatter_plot1
# scatter_plot1<-plot_ly(x=Sepal.Length,y=Sepal.Width,type='scatter',mode='markers')
# 
# #defining labels and titile using layout()
# layout(scatter_plot1,title = "Iris Dataset - Sepal.Length vs Sepal.Width",
#        xaxis = list(title = "Sepal.Length"),
#        yaxis = list(title = "Sepal.Width"))
# 
# 
# 
# 
# 
# 
# 
# #plotting a Scatter Plot with Sepal.Length and Sepal.Width variables with color representing the Species and storing it in scatter_plot12
# scatter_plot2<-plot_ly(x=Sepal.Length,y=Sepal.Width,type='scatter', mode='markers', color = Species)
# 
# #defining labels and titile using layout()
# layout(scatter_plot2,title = "Iris Dataset - Sepal.Length vs Sepal.Width", 
#        xaxis = list(title = "Sepal.Length"),
#        yaxis = list(title = "Sepal.Width"))
# 
# 
# 
# 
# 
# #plotting a Scatter Plot with Sepal.Length and Sepal.Width variables with color represneting the Species and size representing the Petal.Length. Then, storing it in scatter_plot3
# scatter_plot3<-plot_ly(x=Sepal.Length,y=Sepal.Width,type='scatter',mode='markers',color = Species,size=Petal.Length)
# 
# #defining labels and titles using layout()
# layout(scatter_plot3,title = "Iris Dataset - Sepal.Length vs Sepal.Width",
#        xaxis = list(title = "Sepal.Length"),
#        yaxis = list(title = "Sepal.Width"))
# 
# 
# 
# 
# 
# 




scatter_plot4 <- plot_ly(x=Sepal.Length,y=Sepal.Width,z=Petal.Length,type="scatter3d",mode='markers',size=Petal.Width,color=Species)

layout(scatter_plot4,title = "Iris Dataset in 3D")