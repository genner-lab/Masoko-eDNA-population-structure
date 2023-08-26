#### Analysis testing association between allele frequencies in eDNA and fish ####

library(ggplot2)
library(ggpubr)
library(vegan)
library(dplyr)

#LinearModels for each depth
Data_long <- read.table("Data_long.txt",header=TRUE,fill=TRUE,sep="\t",check.names=FALSE)
Data_long$Depth_f = factor(Data_long$Depth, levels=c('3m','7m','12m','18m','22m'))

Model3m <- lm(eDNAFrequency~FishFrequency, data=subset(Data_long ,Depth=="3m"))
summary(Model3m)
Model7m <- lm(eDNAFrequency~FishFrequency, data=subset(Data_long ,Depth=="7m"))
summary(Model7m)
Model12m <- lm(eDNAFrequency~FishFrequency, data=subset(Data_long ,Depth=="12m"))
summary(Model12m)
Model18m <- lm(eDNAFrequency~FishFrequency, data=subset(Data_long ,Depth=="18m"))
summary(Model18m)
Model22m <- lm(eDNAFrequency~FishFrequency, data=subset(Data_long ,Depth=="22m"))
summary(Model22m)

#FacetPlotFigure, Export pdf as 3.5 x 10
  
AlleleFreqPlot <- ggplot(Data_long, aes(FishFrequency, eDNAFrequency)) + 
  theme_classic() +
  geom_point() + 
  facet_grid(~Depth_f) +
  geom_smooth(method = "lm", color="black") +
  theme(panel.spacing.x = unit(1, "lines")) +
  labs(x ="Fish reference allele frequency", y = "eDNA reference allele frequency") +
  coord_cartesian(ylim = c(0,1)) +
  scale_x_continuous(limits = c(0, 1))
AlleleFreqPlot


####Analysis Plotting Admixture of fish####

Admixture <- read.table("FishAdmixtureDec22.txt",header=TRUE,fill=TRUE,sep="\t",check.names=FALSE)
Admixture2 <- Admixture[complete.cases(Admixture), ]
Admixture2$Depth_m <- as.factor(Admixture$Depth_m)
Admixture2$Depth_m <- factor(Admixture2$Depth_m, levels=c("22", "18", "12", "7", "3"))

library(ggplot2)
library(ggforce)
library(ggdist)
library(gghalves)

plot1 <- ggplot(Admixture2, aes(Depth_m,Admix_71_Pop1, color = Depth_m)) + 
  scale_colour_manual(values = c("#2E5894", "#627572", "#969251","#C9AF2F","#FDCC0D"))+
  ggdist::stat_halfeye(adjust = .5, width = .5, .width = 0, justification = -.3) + 
  geom_boxplot(width = .1, outlier.shape = NA) +
  gghalves::geom_half_point(side = "l", range_scale = .4, alpha = .5) +
  theme_classic() + coord_flip() + theme(legend.position="none") +
  labs(x ="Depth (m)", y = "Proportion benthic ancestry")

plot2  <- ggplot(Admixture2, aes(Depth_m,Admix_All_Pop1, color = Depth_m)) + 
  scale_colour_manual(values = c("#2E5894", "#627572", "#969251","#C9AF2F","#FDCC0D"))+
  ggdist::stat_halfeye(adjust = .5, width = .5, .width = 0, justification = -.3) + 
  geom_boxplot(width = .1, outlier.shape = NA) +
  gghalves::geom_half_point(side = "l", range_scale = .4, alpha = .5) +
  theme_classic() + coord_flip() + theme(legend.position="none") +
  labs(x ="Depth (m)", y = "Proportion benthic ancestry")

mergedplot <- ggarrange(plot1, plot2, 
          labels = c("A", "B"),
          ncol = 2, nrow = 1)
mergedplot

####Analysis exploring structure in the eDNA data 71 SNPs####

if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("pcaMethods")
library(pcaMethods)

AlleleData_71_eDNA <- read.table("AlleleData_71.txt",header=TRUE,fill=TRUE,sep="\t",check.names=FALSE)
AlleleData_71_eDNA_PCA <- pca(AlleleData_71_eDNA, method="svd", nPcs=5, centre=TRUE)
summary(AlleleData_71_eDNA_PCA)

#Extract PC scores and add depth column
Depth <- read.table("Depth.txt",header=TRUE,fill=TRUE,sep="\t",check.names=FALSE)
AlleleData_71_eDNA_PCA_scores <- as.data.frame(AlleleData_71_eDNA_PCA@scores)
AlleleData_71_eDNA_PCA_scores <- cbind (AlleleData_71_eDNA_PCA_scores, Depth)
AlleleData_71_eDNA_PCA_scores$Depth <- as.factor(AlleleData_71_eDNA_PCA_scores$Depth)

#Plot PCA
PCA <- ggscatter(AlleleData_71_eDNA_PCA_scores, x = "PC1", y = "PC2", color = "Depth",
                 palette = c("#FDCC0D", "#C9AF2F", "#969251","#627572","#2E5894"),
                 ellipse = TRUE, ellipse.type = "convex", mean.point = FALSE,
                 star.plot = FALSE) +
  labs(x ="PC1 (18.5% of variation)", y = "PC2 (13.9% of variation)") +
  theme(legend.position = "right") 
PCA

####Plotting association between contrasts in allele frequencies####

Contrasts_5_25 <- read.table("contrasts_5_25.txt",header=TRUE,fill=TRUE,sep="\t",check.names=FALSE)
Test <- lm(fish_change_5_25~eDNA_change_5_25, data=Contrasts_5_25)
summary(Test)

cor.test(Contrasts_5_25$eDNA_change_5_25,Contrasts_5_25$fish_change_5_25, method = c("pearson"))

Contrasts_5_25_plot <- ggplot(Contrasts_5_25 , aes(eDNA_change_5_25, y=fish_change_5_25)) +
  theme_classic() +
  geom_point(size=2)+ 
  geom_smooth(method = "lm", color="black") +
  labs(x = "eDNA: Change in allele frequency (5 to 25m)", y = "fish: Change in allele frequency (5 to 25m)")
Contrasts_5_25_plot


