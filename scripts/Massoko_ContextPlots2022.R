library(ggplot2)
library(ggpubr)
library(ggokabeito)
library(khroma)
library(reshape2)

#Read in environmental data

Delalande <- read.table("Delalande_Data.txt",header=TRUE,fill=TRUE,sep="\t",check.names=FALSE)

Temp <- ggplot(Delalande, aes(x=temp, y=Depth, color = Dataset)) +
  theme_classic() +
  geom_point(size = 3) + scale_y_reverse() +
  geom_smooth(method = "loess", linewidth = 1.5, orientation = "y", se = FALSE, span = 1.2) +
  labs(x = "Temperature (°C)", y = "Depth (m)") +
  scale_x_continuous(limits = c(22, 32), breaks =c(22,24,26,28,30,32)) +
  ylim(25, 0) +  
  scale_colour_vibrant()
Temp

Oxygen <- ggplot(Delalande, aes(x=oxygen2_mg_l, y=Depth, color = Dataset)) +
  theme_classic() +
  geom_point(size = 3) + scale_y_reverse() +
  geom_smooth(method = "gam", linewidth = 1.5, orientation = "y", se = FALSE, span = 1.2) +
  labs(x = "Dissolved oxygen (mg/L)", y = "Depth (m)") +
  scale_x_continuous(limits = c(0, 6), breaks =c(0,2,4,6)) +
  ylim(25, 0) +  
  scale_colour_vibrant()
Oxygen

ggarrange(Temp, Oxygen,
          labels = c(" ", " "),
          ncol = 2, nrow = 1, common.legend = FALSE, legend="none")

#save as 4 x 8 inches

MaxLight <- read.table("MaxLight.txt",header=TRUE,fill=TRUE,sep="\t",check.names=FALSE)

Light <- ggplot(MaxLight, aes(y=Depth, x=Intensity, color = Repeat)) +
  theme_classic() +
  geom_point(size = 3) + scale_y_reverse() +
  geom_smooth(method = "gam", size = 1.5, orientation = "y", se = FALSE, span = 3) +
  labs(x = "Maximum irradiance (units)", y = "Depth (m)") +
  scale_x_continuous(trans='log10') +
 scale_y_reverse() +  ylim(25, 0) +  
  scale_colour_okabeito() +  theme(legend.position="none")
Light
  
trio <- ggarrange(Temp, Oxygen, Light,
          labels = c(" ", " ", " "," "),
          ncol = 3, nrow = 1, common.legend = FALSE, legend="none")
trio

#export as 12 x 4 inches

## end of code
