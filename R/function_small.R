add<-function(x,y){ 
#' Package provides sample data that are loaded with package loading. 
#' @param x and y are variables
#' #not RUN
#' @import data.table 
#' @importFrom dplyr %>%


data_test<-data.frame(ID=c(seq(1:10)), NAME=c(paste("ID",seq(1:10),sep="_")))
data_test$NAME<-  gsub("_*","",data_test$NAME)

BP <-END <-START<-NULL
dt_snp<-data.table("SNP"=c(paste("SNP",seq(1:10),sep="")), "BP"=c(1100, 89200, 2500, 33000, 5500, 69500, 12000,8800, 23200, 27000  ))
dt_gene<-data.table("GENE"=c("GENE1","GENE2","GENE3","GENE4","GENE5"), 
"START"=c(1000,2100,5000,40000,23000), "END"=c(2000,3000,9000,45000,30000))

snp_withingenes<-dt_snp[dt_gene, c("SNP","BP","GENE","START","END"), on=list(BP>=START, BP<=END), nomatch=0] # inner join

return(snp_withingenes)

}