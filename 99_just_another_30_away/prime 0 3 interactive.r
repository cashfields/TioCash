




library(plot3D)
library(plotly)
library(ggplot2)
library(stats)
library(stats4)
library(graphics)
library(crosstalk)
library(rgl)


myprime <- read.csv("look late 16 level 0 3.txt") 


head(myprime) 
plot_ly(x=myprime$x,y=myprime$y,z=myprime$z,type="scatter3d",mode='markers',size=.4,color=myprime$pcolor,)

##scatter_plot4 <- plot_ly(x=myprime$x,y=myprime$y,z=myprime$z,type="scatter3d",mode='markers',size=.4,color=myprime$pcolor,)


##layout(scatter_plot4,title = "just another 30" )

