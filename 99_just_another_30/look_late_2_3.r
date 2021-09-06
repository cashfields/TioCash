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


plotids <- with(look_late_2_3, plot3d(x, y, z, type="s", size = .1 ,
                                      xlim = c(0, 30), ylim = c(0, 30),zlim = c(4.0, 1.0),
                                      col=(look_late_2_3$pcolor),))



rglwidget(elementId = "look_late_2_3")


toggleWidget(sceneId = "look_late_2_3", ids = plotids["data"], label = "Data")



names(plotids)
unclass(plotids)


rglwidget() |>
  toggleWidget(ids = plotids["data"], label = "Data")





clear3d() # Remove the earlier display

#	gray10
gray10 <- with(subset(look_late_2_3, pcolor == "gray91"),
            spheres3d(x, y, z,
                      col = pcolor,
                      radius = .5 , alpha = 0.9))


BLUE <- with(subset(look_late_2_3, pcolor == "BLUE"),
            spheres3d(x, y, z,
                      col = pcolor,
                      radius = .5 , alpha = 0.9))


GREEN <- with(subset(look_late_2_3, pcolor == "GREEN"),
            spheres3d(x, y, z,
                      col = pcolor,
                      radius = .5 , alpha = 0.9))


RED <- with(subset(look_late_2_3, pcolor == "RED"),
            spheres3d(x, y, z,
                      col = pcolor,
                      radius = .5 , alpha = 0.9))




GOLD <- with(subset(look_late_2_3, pcolor == "GOLD"),
            spheres3d(x, y, z,
                      col = pcolor,
                      radius = .5 , alpha = 0.9))

# 
# c19 <- with(subset(look_late_2_3, x == "19"),
#             spheres3d(x, y, z,
#                       col = pcolor,
#                       radius = .5 , alpha = 0.9))
# 
# 
# c23 <- with(subset(look_late_2_3, x == "23"),
#             spheres3d(x, y, z,
#                       col = pcolor,
#                       radius = .5 , alpha = 0.9))
# 
# 
# c29 <- with(subset(look_late_2_3, x == "29"),
#             spheres3d(x, y, z,
#                       col = pcolor,
#                       radius = .5 , alpha = 0.9))


aspect3d(1,1,1)
#axesid <- decorate3d()
axesid <- decorate3d(xlim = NULL, ylim = NULL, zlim = (c(1,4)),
                     xlab = "PRIME", ylab = "*FAM", zlab = "30 's SOLUTION",
                     box = TRUE, axes = TRUE,
                     main = "Prime *Fam By Color Pairs And Lines", sub = " ",
                     top = TRUE, aspect = FALSE, expand = 1.03,  )

rgl.viewpoint(theta = 00, phi = 90,fov = 0,  zoom = .81)



#rgl_add_axes(show.bbox = TRUE)
rglwidget() %>%
  toggleWidget(ids = gray10) %>%
  toggleWidget(ids = BLUE) %>%
  toggleWidget(ids = GREEN) %>%
  toggleWidget(ids = RED) %>%
  toggleWidget(ids = GOLD) %>%
  # toggleWidget(ids = c19) %>%
  # toggleWidget(ids = c23) %>%
  # toggleWidget(ids = c29) %>%
  
  asRow(last = 5)

