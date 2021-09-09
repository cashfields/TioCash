# Plot All *FAM (*FAM01 , *FAM07 , *FAM11 , *FAM13 , *FAM17 , *FAM23 , *FAM29)
# Make color pairs (c0129 - blue) ; (c0723 - green) ; (c1119 -red) ; (c1317 - gold)


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


plotids <- with(look_late_012, plot3d(x, y, z, type="s", size = .7 ,
                                  xlim = c(0, 30), ylim = c(0, 30),zlim = c(0, 30),
                                  col=(look_late_012$pcolor),))
                
                

rglwidget(elementId = "look_late_012")


toggleWidget(sceneId = "look_late_012", ids = plotids["data"], label = "Data")     



names(plotids)
unclass(plotids)


rglwidget() |>
  toggleWidget(ids = plotids["data"], label = "Data")




clear3d() # Remove the earlier display



# 
# # make lines
# # http://5.9.10.113/67545977/putting-axis-labels-parallel-to-axes-in-r-rgl-package
# #
# # 01
# lineX01data = c(1,1,1,1,1,1,1,1)
# lineY01data = c(1,7,11,13,17,19,23,29)
# lineZ01data = c(1,7,11,13,17,19,23,29)
# linedf01 = data.frame(lineX01data,lineY01data,lineZ01data)
# #plot3d(linedf01$lineX01data, linedf01$lineY01data, linedf01$lineZ01data, type = 'l', lwd = 2, add = T, col = 'blue')
# 
# #
# # 29
# lineX29data = c(29,29,29,29,29,29,29,29)
# lineY29data = c(1,7,11,13,17,19,23,29)
# lineZ29data = c(29,23,19,17,13,11,7,1)
# linedf29 = data.frame(lineX29data,lineY29data,lineZ29data)
# #plot3d(linedf29$lineX29data, linedf29$lineY29data, linedf29$lineZ29data, type = 'l', lwd = 2, add = T, col = 'blue')
# 
# 
# 
# 
# 
# 
# #
# # 07
# lineX07data = c(07,07,07,07,07,07,07,07)
# lineY07data = c(1,7,11,13,17,19,23,29)
# lineZ07data = c(7,19,17,1,29,13,11,23)
# linedf07 = data.frame(lineX07data,lineY07data,lineZ07data)
# #plot3d(linedf07$lineX07data, linedf07$lineY07data, linedf07$lineZ07data, type = 'l', lwd = 2, add = T, col = 'blue')
# 
# #
# # 23
# lineX23data = c(23,23,23,23,23,23,23,23)
# lineY23data = c(1,7,11,13,17,19,23,29)
# lineZ23data = c(23,11,13,29,1,17,19,7)
# linedf23 = data.frame(lineX23data,lineY23data,lineZ23data)
# #plot3d(linedf23$lineX23data, linedf23$lineY23data, linedf23$lineZ23data, type = 'l', lwd = 2, add = T, col = 'blue')
# 
# #
# # 11
# lineX11data = c(11,11,11,11,11,11,11,11)
# lineY11data = c(1,7,11,13,17,19,23,29)
# lineZ11data = c(11,17,1,23,7,29,13,19)
# linedf11 = data.frame(lineX11data,lineY11data,lineZ11data)
# #plot3d(linedf11$lineX11data, linedf11$lineY11data, linedf11$lineZ11data, type = 'l', lwd = 2, add = T, col = 'blue')
# 
# #
# #19
# lineX19data = c(19,19,19,19,19,19,19,19)
# lineY19data = c(1,7,11,13,17,19,23,29)
# lineZ19data = c(19,13,29,7,23,1,17,11)
# linedf19 = data.frame(lineX19data,lineY19data,lineZ19data)
# #plot3d(linedf19$lineX19data, linedf19$lineY19data, linedf19$lineZ19data, type = 'l', lwd = 2, add = T, col = 'blue')
# 
# #
# #13
# lineX13data = c(13,13,13,13,13,13,13,13)
# lineY13data = c(1,7,11,13,17,19,23,29)
# lineZ13data = c(13,1,23,19,11,7,29,17)
# linedf13 = data.frame(lineX13data,lineY13data,lineZ13data)
# #plot3d(linedf13$lineX13data, linedf13$lineY13data, linedf13$lineZ13data, type = 'l', lwd = 2, add = T, col = 'blue')
# 
# 
# #17
# lineX17data = c(17,17,17,17,17,17,17,17)
# lineY17data = c(1,7,11,13,17,19,23,29)
# lineZ17data = c(17,29,7,11,19,23,1,13)
# linedf17 = data.frame(lineX17data,lineY17data,lineZ17data)
# #plot3d(linedf17$lineX17data, linedf17$lineY17data, linedf17$lineZ17data, type = 'l', lwd = 2, add = T, col = 'blue')
# 
# # 
# # x01 <- c(1,1,1,1,1,1,1,1)
# # y01 <- c(1,7,11,13,17,19,23,29)
# # z01 <- c(1,7,11,13,17,19,23,29)  
# # 
# # x29 <- c(29,29,29,29,29,29,29,29)
# # y29 <- c(1,7,11,13,17,19,23,29)
# # z29 <- c(29,23,19,17,13,11,7,1)
# # 
# 
# # lines3d(x01,y01,z01, type = 'lines', lwd = 2, add = T , col = 'blue')
# # lines3d(x29,y29,z29, type = 'lines', lwd = 3, add = T, col = 'red')





##c0129 <- with(subset(look_late_012, cNUMAll == "1"),plot3d(linedf01, type = 'l', lwd = 2, add = T, col = 'blue'))
c01 <- with(subset(look_late_012, x == "1"),
              spheres3d(x, y, z,
                        col = pcolor,
                        radius = 1.0 , alpha = 0.9),
              segments3d(x[1:8],y[1:8],z[1:9],col=2,lwd=2) )


c29 <- with(subset(look_late_012, x == "29"),
              spheres3d(x, y, z,
                        col = pcolor,
                        radius = 1.0 , alpha = 0.9),
              segments3d(x[1:8],y[1:8],z[1:9],col=2,lwd=2) )



# c01l <- with(subset(look_late_012, x == "1"),
#                lines3d(linedf01$lineX01data, linedf01$lineY01data, linedf01$lineZ01data, lwd = 2, add = T, col = pcolor)
# 
# )
# 
# c29l <- with(subset(look_late_012, x == "29"),
#               lines3d(linedf29$lineX29data, linedf29$lineY29data, linedf29$lineZ29data,  lwd = 2, add = T, col = pcolor)
# )
# 


  # 
  #       c0129l <- with(subset(look_late_012, cNUMAll == "1"),
  #                     # lines3d(look_late_012$xA11[1:8,] , look_late_012$yA11[1:8,], look_late_012$zA11[1:8,], lwd = 2, add = T, col = 'blue'),
  #                      lines3d(look_late_012$xA11[9:16,] , look_late_012$yA11[9:16,], look_late_012$zA11[9:16,], lwd = 2, add = T, col = 'blue')
  #                   )
      #                              #  ((lines3d(linedf01$lineX01data, linedf01$lineY01data, linedf01$lineZ01data,
                  #         type = 'l', lwd = 2, a, col = 'blue'))),
              # par("TRUE"),
              # lines3d(linedf29$lineX29data, linedf29$lineY29data, linedf29$lineZ29data,
              #         type = 'l', lwd = 2, add = T, col = 'blue'))






c07 <- with(subset(look_late_012, x == "7"),
              spheres3d(x, y, z,
                        col = pcolor,
                        radius = 1.0 , alpha = 0.9))

c23 <- with(subset(look_late_012, x == "23"),
              spheres3d(x, y, z,
                        col = pcolor,
                        radius = 1.0 , alpha = 0.9))

# 
# c07l <- with(subset(look_late_012, x == "7"),
#              lines3d(linedf07$lineX07data, linedf07$lineY07data, linedf07$lineZ07data, lwd = 2, add = T, col = pcolor)
#              
# )
# 
# c23l <- with(subset(look_late_012, x == "23"),
#              lines3d(linedf23$lineX23data, linedf23$lineY23data, linedf23$lineZ23data,  lwd = 2, add = T, col = pcolor)
# )






c11 <- with(subset(look_late_012, x == "11"),
              spheres3d(x, y, z,
                        col = pcolor,
                        radius = 1.0 , alpha = 0.9))

c19 <- with(subset(look_late_012, x == "19"),
              spheres3d(x, y, z,
                        col = pcolor,
                        radius = 1.0 , alpha = 0.9))



# 
# c11l <- with(subset(look_late_012, x == "11"),
#              lines3d(linedf11$lineX11data, linedf11$lineY11data, linedf11$lineZ11data, lwd = 2, add = T, col = pcolor)
# 
# )
# 
# c19l <- with(subset(look_late_012, x == "19"),
#              lines3d(linedf19$lineX19data, linedf19$lineY19data, linedf19$lineZ19data,  lwd = 2, add = T, col = pcolor)
# )
# 







c13 <- with(subset(look_late_012, x == "13"),
              spheres3d(x, y, z,
                        col = pcolor,
                        radius = 1.0 , alpha = 0.9))

c17 <- with(subset(look_late_012, x == "17"),
              spheres3d(x, y, z,
                        col = pcolor,
                        radius = 1.0 , alpha = 0.9))


# 
# c13l <- with(subset(look_late_012, x == "13"),
#              lines3d(linedf13$lineX13data, linedf13$lineY13data, linedf13$lineZ13data, lwd = 2, add = T, col = pcolor)
# 
# )
# 
# c17l <- with(subset(look_late_012, x == "17"),
#              lines3d(linedf17$lineX17data, linedf17$lineY17data, linedf17$lineZ17data,  lwd = 2, add = T, col = pcolor)
# )
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
  toggleWidget(ids = c01) %>%
  toggleWidget(ids = c07) %>%
  toggleWidget(ids = c11) %>%
  toggleWidget(ids = c13) %>%
  toggleWidget(ids = c17) %>%
  toggleWidget(ids = c19) %>%
  toggleWidget(ids = c23) %>%
  toggleWidget(ids = c29) %>%
  
  asRow(last = 8)















