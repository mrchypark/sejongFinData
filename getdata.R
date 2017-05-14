if (!require("rvest")) install.packages("rvest")
if (!require("stringi")) install.packages("stringi")
library(rvest)
library(stringi)

print("start get code. mrchypark  go")

url <- "http://www.sejongdata.com/query/value.html"

tem <- read_html(url,encoding = "UTF-8")
dat <- tem %>% html_nodes(".bus_board_txt1") %>% html_text
tit <- tem %>% html_nodes('.bus_board_tit1') %>% html_text

codeData<-data.frame(matrix(dat,ncol=5, byrow=T))
names(codeData)<-tit
rm(dat,tem,tit,url)
codeData<-codeData[,c(1,2)]
write.csv(codeData,"./codeData.csv",row.names = F)
save(codeData,file="./codeData.RData")

print(paste0("done. please check ",getwd()))


## function load
source("./getTable.R")

dataAll<-c()

for(i in 1:nrow(codeData)){
  for(j in 1:2){

    url <- paste0("http://www.sejongdata.com/business_include_fr/table_main0_bus_01.html?no=",
                  codeData[i,1],"&gubun=",j)
    tem <- getTable(url)
    tem <- data.frame(country=codeData[i,2],tem)
    dataAll <- rbind(dataAll,tem)
    print(paste0(i," / ",nrow(codeData)," / ",j))
  }
}



write.csv(dataAll,"./dataAll.csv",row.names = F)
save(dataAll,file="./dataAll.RData")
