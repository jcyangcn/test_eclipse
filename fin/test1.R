# TODO: Add comment
# 
# Author: Administrator
###############################################################################


require("quantmod")
getSymbols(c("SSEC","6000036.SS"))

jc.getSymbols <- function(){
#    setwd("D:/workspace/fin")
  setwd("xls/data")

    zz = file("600036.txt",open="rb")
    df = readLines(zz)
    close(zz)
    
    d= read.csv(textConnection(df[-length(df)]),skip=2,head=TRUE,sep="\t",flush=T)
  require("xts")  
  d.xts = xts(d[,-1],as.Date(d[,1]),src="csv",updated=Sys.time())
    
    colnames(d.xts)[1:5] = c("Open","High","Low","Close","Volume")
    
    
}

