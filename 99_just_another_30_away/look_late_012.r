# Plot All *FAM (*FAM01 , *FAM07 , *FAM11 , *FAM13 , *FAM17 , *FAM23 , *FAM29)


library(plot3D)
library(plotly)
library(ggplot2)
library(stats)
library(stats4)
library(graphics)
library(crosstalk)
library(rgl)

options("warning.length"=8170)
getOption("warning.length")


plotids <- with(look_late_012, plot3d(x, y, z, type="s", size = .1 ,
                                      xlim = c(0, 30), ylim = c(0, 30),zlim = c(0, 36000),
                                      col=(look_late_012$pcolor),))



rglwidget(elementId = "look_late_012")


toggleWidget(sceneId = "look_late_012", ids = plotids["data"], label = "Data")



names(plotids)
unclass(plotids)


rglwidget() |>
  toggleWidget(ids = plotids["data"], label = "Data")





clear3d() # Remove the earlier display


BLUE <- with(subset(look_late_012, pcolor == "BLUE"),
            spheres3d(x, y, z,
                      col = pcolor,
                      radius = .1 , alpha = 0.9),
            segments3d(x[1:8],y[1:8],z[1:9],col=2,lwd=2) )


GREEN <- with(subset(look_late_012, pcolor == "GREEN"),
            spheres3d(x, y, z,
                      col = pcolor,
                      radius = .1 , alpha = 0.9))


RED <- with(subset(look_late_012, pcolor == "RED"),
            spheres3d(x, y, z,
                      col = pcolor,
                      radius = .1 , alpha = 0.9))

# 
# GOLD <- with(subset(look_late_012, pcolor == "GOLD"),
#             spheres3d(x, y, z,
#                       col = pcolor,
#                       radius = .1 , alpha = 0.9))



# 
# c17 <- with(subset(look_late_012, x == "17"),
#             spheres3d(x, y, z,
#                       col = pcolor,
#                       radius = .1 , alpha = 0.9))
# 
# 
# c19 <- with(subset(look_late_012, x == "19"),
#             spheres3d(x, y, z,
#                       col = pcolor,
#                       radius = .1 , alpha = 0.9))
# 
# 
# c23 <- with(subset(look_late_012, x == "23"),
#             spheres3d(x, y, z,
#                       col = pcolor,
#                       radius = .1 , alpha = 0.9))
# 
# 
# c29 <- with(subset(look_late_012, x == "29"),
#             spheres3d(x, y, z,
#                       col = pcolor,
#                       radius = .1 , alpha = 0.9),
#             segments3d(x[1:8],y[1:8],z[1:9],col=2,lwd=2) )
# 

aspect3d(1,1,1)
#axesid <- decorate3d()
axesid <- decorate3d(xlim = NULL, ylim = NULL, zlim = NULL,
                     xlab = "PRIME", ylab = "*FAM", zlab = "30 's SOLUTION",
                     box = TRUE, axes = TRUE,
                     main = "Prime *Fam By Color Pairs And Lines", sub = " ",
                     top = TRUE, aspect = FALSE, expand = 1.03, )


#rgl_add_axes(show.bbox = TRUE)
rglwidget() %>%
  toggleWidget(ids = BLUE) %>%
  toggleWidget(ids = GREEN) %>%
 # toggleWidget(ids = RED) %>%
 # toggleWidget(ids = GOLD) %>%
  # toggleWidget(ids = c17) %>%
  # toggleWidget(ids = c19) %>%
  # toggleWidget(ids = c23) %>%
  # toggleWidget(ids = c29) %>%
  
  asRow(last = 2)

