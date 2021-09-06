library(plot3D)
library(plotly)
library(ggplot2)
library(stats)
library(stats4)
library(graphics)
library(crosstalk)
library(rgl)

data(iris)
head(iris)  


x <- sep.l <- iris$Sepal.Length
y <- pet.l <- iris$Petal.Length
z <- sep.w <- iris$Sepal.Width

open3d()
## glX 
##   1


plot3d(x = sep.l, y = pet.l, z = sep.w, 
          xlab = "Sepal Length (cm)", ylab = "Petal Length (cm)",
          zlab = "Sepal Width (cm)")
rglwidget() #view the rgl device within your html doc




rgl.bg(color = "white") # Setup the background color
rgl.points(x, y, z, color ="blue", size =5) # Scatter plot
identify3d(x = sep.l, y = pet.l, z = sep.w, labels=row.names(iris), buttons=c("left", "right"))
rglwidget() #view the rgl device within your html doc



rgl.bg(color = "white") # Setup the background color
rgl.points(x, y, z, color ="blue", size =5) # Scatter plot
identify3d(x = sep.l, y = pet.l, z = sep.w, labels=row.names(iris), buttons=c("left", "right"))
rglwidget() #view the rgl device within your html doc