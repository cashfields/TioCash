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


plotids <- with(look_late_012A, plot3d(x, y, z, type="s", size = .5 ,
                                      xlim = c(0, 30), ylim = c(0, 30),zlim = c(36000, 36200),
                                      col=(look_late_012A$pcolor),))



rglwidget(elementId = "look_late_012A")


toggleWidget(sceneId = "look_late_012A", ids = plotids["data"], label = "Data")



names(plotids)
unclass(plotids)


rglwidget() |>
  toggleWidget(ids = plotids["data"], label = "Data")





clear3d() # Remove the earlier display


c01 <- with(subset(look_late_012A, x == "1"),
            spheres3d(x, y, z,
                      col = pcolor,
                      radius = .5 , alpha = 0.9))


c07 <- with(subset(look_late_012A, x == "7"),
            spheres3d(x, y, z,
                      col = pcolor,
                      radius = .5 , alpha = 0.9))


c11 <- with(subset(look_late_012A, x == "11"),
            spheres3d(x, y, z,
                      col = pcolor,
                      radius = .5 , alpha = 0.9))


c13 <- with(subset(look_late_012A, x == "13"),
            spheres3d(x, y, z,
                      col = pcolor,
                      radius = .5 , alpha = 0.9))




c17 <- with(subset(look_late_012A, x == "17"),
            spheres3d(x, y, z,
                      col = pcolor,
                      radius = .5 , alpha = 0.9))


c19 <- with(subset(look_late_012A, x == "19"),
            spheres3d(x, y, z,
                      col = pcolor,
                      radius = .5 , alpha = 0.9))


c23 <- with(subset(look_late_012A, x == "23"),
            spheres3d(x, y, z,
                      col = pcolor,
                      radius = .5 , alpha = 0.9))


c29 <- with(subset(look_late_012A, x == "29"),
            spheres3d(x, y, z,
                      col = pcolor,
                      radius = .5 , alpha = 0.9))


aspect3d(1,1,1)
#axesid <- decorate3d()
axesid <- decorate3d(xlim = NULL, ylim = NULL, zlim = NULL,
                     xlab = "PRIME", ylab = "*FAM", zlab = "30 's SOLUTION",
                     box = TRUE, axes = TRUE,
                     main = "Prime *Fam By Color Pairs And Lines", sub = " ",
                     top = TRUE, aspect = FALSE, expand = 1.03, )

rgl.viewpoint(theta = 00, phi = 90,fov = 0,  zoom = .81)



#rgl_add_axes(show.bbox = TRUE)
rglwidget() %>%
  toggleWidget(ids = c01) %>%
  toggleWidget(ids = c07) %>%
  toggleWidget(ids = c11) %>%
  toggleWidget(ids = c13) %>%
  toggleWidget(ids = c17) %>%
  toggleWidget(ids = c19) %>%
  toggleWidget(ids = c23) %>%
  toggleWidget(ids = c29) %>%
  
  asRow(last = 8)

