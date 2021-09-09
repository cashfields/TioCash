


#  Data pair1317
#  
#  # make the shortest line the lowest color
#  x   y   z   c
# x   #y  #z  #c
# 13  1   13  12
# 13  29  17  12
# 17  1   17  12
# 17  29  13  12
# 
# 
# 
# 
# 
# 
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



par(pty="s")
plotids <- with(snapinAll, plot3d(xAll, yAll, zAll, type="s",
                                  xlim = c(0, 30), ylim = c(0, 30),zlim = c(0, 30),
                                  col=(snapinAll$cNAMEAll),))

####rgl.lines(c(0, 30), c(0, 30), c(0, 30), color = "black") 
rglwidget(elementId = "sel_All_col_pairs")


toggleWidget(sceneId = "sel_All_col_pairs", ids = plotids["data"], label = "Data")     



names(plotids)
unclass(plotids)


rglwidget() |>
  toggleWidget(ids = plotids["data"], label = "Data")




clear3d() # Remove the earlier display




# make lines
# http://5.9.10.113/67545977/putting-axis-labels-parallel-to-axes-in-r-rgl-package
#
#  x   y   z   c
# x   #y  #z  #c
# 13  1   13  12
# 13  29  17  12
# 17  1   17  12
# 17  29  13  12

#
#1317a - outter box
lineX1317adata = c(13,17,17,13,13)
lineY1317adata = c(1,1,29,29,1)
lineZ1317adata = c(13,17,13,17,13)
linedf1317a = data.frame(lineX1317adata,lineY1317adata,lineZ1317adata)
#plot3d(linedf13$lineX13data, linedf13$lineY13data, linedf13$lineZ13data, type = 'l', lwd = 2, add = T, col = 'blue')
#1317b - outter box
#13,13,17,17
#7,23,7,23
#01,29,29,01
lineX1317bdata = c(13,13,17,17,13)
lineY1317bdata = c(7,23,7,23,7)
lineZ1317bdata = c(1,29,29,1,1)
linedf1317b = data.frame(lineX1317bdata,lineY1317bdata,lineZ1317bdata)
#plot3d(linedf13$lineX13data, linedf13$lineY13data, linedf13$lineZ13data, type = 'l', lwd = 2, add = T, col = 'blue')
#1317c - outter box
#13,13,17,17
#11,19,11,19
#23,7,7,23
lineX1317cdata = c(13,13,17,17,13)
lineY1317cdata = c(11,19,11,19,11)
lineZ1317cdata = c(23,7,7,23,23)
linedf1317c = data.frame(lineX1317cdata,lineY1317cdata,lineZ1317cdata)
#plot3d(linedf13$lineX13data, linedf13$lineY13data, linedf13$lineZ13data, type = 'l', lwd = 2, add = T, col = 'blue')
#1317d - outter box
#13,13,17,17
#13,17,13,17
#19,11,11,19
lineX1317ddata = c(13,13,17,17,13)
lineY1317ddata = c(13,17,13,17,13)
lineZ1317ddata = c(19,11,11,19,19)
linedf1317d = data.frame(lineX1317ddata,lineY1317ddata,lineZ1317ddata)





c1317 <- with(subset(snapinAll, cNUMAll == "4"),
              spheres3d(xAll, yAll, zAll,
                        col = cNAMEAll,
                        radius = 1.0 , alpha = 0.9))


c1317la <- with(subset(snapinAll, cNUMAll == "4"),
               lines3d(linedf1317a$lineX1317adata, linedf1317a$lineY1317adata, linedf1317a$lineZ1317adata, lwd = 2, add = T, col = "blue")

)

c1317lb <- with(subset(snapinAll, cNUMAll == "4"),
                lines3d(linedf1317b$lineX1317bdata, linedf1317b$lineY1317bdata, linedf1317b$lineZ1317bdata, lwd = 2, add = T, col = "green")

)

c1317lc <- with(subset(snapinAll, cNUMAll == "4"),
                lines3d(linedf1317c$lineX1317cdata, linedf1317c$lineY1317cdata, linedf1317c$lineZ1317cdata, lwd = 2, add = T, col = "red")

)


c1317ld <- with(subset(snapinAll, cNUMAll == "4"),
                lines3d(linedf1317d$lineX1317ddata, linedf1317d$lineY1317ddata, linedf1317d$lineZ1317ddata, lwd = 2, add = T, col = "gold")
                
)






# old - aspect3d(1,1,1)
aspect3d("iso")
#axesid <- decorate3d()
# good - xlim = c(0, 30), ylim = c(0, 30),zlim = c(0, 30),
# old  - xlim = 30, ylim = 30, zlim = 30,
axesid <- decorate3d(xlim = c(0, 30), ylim = c(0, 30),zlim = c(0, 30),
                     xlab = "PRIME", ylab = "*FAM", zlab = "SOLUTION",
                     box = TRUE, axes = TRUE,
                     main = "Prime *Fam1317 By Color Pairs And Lines", sub = " ",
                     top = TRUE, aspect = FALSE, expand = 1.03, )


#rgl_add_axes(show.bbox = TRUE)
rglwidget() %>%
  # toggleWidget(ids = c0129) %>%
  # toggleWidget(ids = c01l) %>%
  # toggleWidget(ids = c29l) %>%
  # toggleWidget(ids = c0723) %>%
  # toggleWidget(ids = c07l) %>%
  # toggleWidget(ids = c23l) %>%
  # toggleWidget(ids = c1119) %>%
  # toggleWidget(ids = c11l) %>%
  # toggleWidget(ids = c19l) %>%
  toggleWidget(ids = c1317) %>%
  toggleWidget(ids = c1317la) %>%
  toggleWidget(ids = c1317lb) %>%
  toggleWidget(ids = c1317lc) %>%
  toggleWidget(ids = c1317ld) %>%
  asRow(last = 5)



















