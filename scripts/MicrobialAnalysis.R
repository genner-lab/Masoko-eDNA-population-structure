##CCA and plotting of summary microbial data

Bacteria <- read.table("Bacteria_KrakenUniq.txt",header=TRUE,fill=TRUE,sep="\t",check.names=FALSE)
Bacteria_only <- Bacteria[,c(3:155)]
Bacteria_depth <- Bacteria[,c(1:2)]

library(vegan)
library(khroma)
library(ggplot2)

cca <- cca(Bacteria_only ~ Depth, data=Bacteria_depth)
summary(cca)
anova(cca)
cca$CCA$wa

BacteriaPlotData <- cbind(Bacteria[,c(1:2)],cca$CCA$wa)

BacteriaPlotData

BactPlot <- ggplot(BacteriaPlotData, aes(x=CCA1, y=Depth)) +
  theme_classic() +
  geom_point(size=3) + scale_y_reverse() +
  geom_smooth(method = "gam", formula = y ~ s(x, bs = "cs", k = 3), size = 1.5, orientation = "y", se = TRUE, span = 2) +
  labs(x = "CCA1", y = "Depth (m)") +
  scale_x_continuous(limits = c(-2, 2), breaks =c(-2,-1,0,1,2)) +
  ylim(25, 0) +  
  scale_colour_vibrant()
BactPlot

TopTen <- read.table("TopTen.txt",header=TRUE,fill=TRUE,sep="\t",check.names=FALSE)
Position <- c("3m", "7m-18m", "22m")
TopTen$Depth <- factor(TopTen$Depth,levels = c("3m", "7m-18m", "22m"))
p <- ggplot(data=TopTen, aes(x=PercentageReads, y=Taxon, fill=Depth)) +
  labs(y = " ", x = "Percentage of assigned reads") +
  geom_bar(stat="identity", color="black", position=position_dodge()) +
  scale_fill_brewer(palette = "YlGnBu", direction=1, guide = guide_legend(reverse = TRUE)) +
  theme_classic() + coord_flip() +
  theme(axis.text.x=element_text(angle=40, hjust=1))
p

export as 9 x 5

## end of code
