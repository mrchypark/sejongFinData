getTable <- function(url=url){
  
  tem <- read_html(url,encoding = "UTF-8")
  dat <- tem %>% html_nodes(".bus_board_txt1") %>% html_text
  tit <- tem %>% html_nodes('.bus_board_tit1') %>% html_text
  
  tit <- stri_trim_both(tit)
  tit <- tit[1:(which(nchar(tit)==0)[2]-1)]
  tit <- gsub(" ","",tit)
  tit <- gsub("[\u00A0]","",tit)
  year <- tit[-1]
  
  dat<-data.frame(t(matrix(dat,nrow=16, byrow=T)),stringsAsFactors = F)
  names(dat)<-dat[1,]
  dat<-dat[-1,]
  dat<-cbind(year,dat)
  return(dat)
}