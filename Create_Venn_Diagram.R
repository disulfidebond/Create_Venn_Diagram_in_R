# install.packages("VennDiagram") 
library(VennDiagram)
setwd("/your/working/directory/")
grid.newpage() # must call this or the grid will be overwritten with the old one

# If you have calcualted the values yourself, the syntax is:
area1 <- 341
area2 <- 242
sharedArea <- 63
label4Area1 <- "LabelOnLeft"
label4Area2 <- "LabelOnRIght"

# cat.pos is a vector with n values set to x degrees, where n == the number of sets in the Venn diagram

# cat.dist is a vector with n values set to a float that adjusts the position of the label, where n == the number of sets in the Venn Diagram

# lty is a value that handles n edge(s) of the Venn Diagram, where n == the number of sets in the Venn Diagram

# if you do not set scaled = FALSE, the shapes will be scaled acording to their size

draw.pairwise.venn(area1,area2,sharedArea category = c(label4Area1, label4Area2), lty = rep("blank", 2), fill=c("light blue", "pink"), alpha = rep(0.5, 2), cat.pos = c(0, 0), cat.dist = rep(0.025, 2), scaled = FALSE)

# there are also draw.triple.venn and so on
draw.triple.venn(area1 = area1, area2 = area2, area3 = 183, n12 = 53, n23 = 174, n13 = 0, n123 = 0, category = c("Label1", "Label2", "Label3"), lty = "blank", fill = c("light blue", "pink", "mediumorchid"), cat.dist = rep(0.04, 3), cat.pos = c(-20, 10, 175), scaled = FALSE)

# with more than 4 sets, the shapes will be changed automatically to elipses
