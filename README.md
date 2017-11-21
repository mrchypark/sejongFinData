# sejongFinData

# 변경함
    
## 스타는 더욱 많은 코드, 데이터 공개의 힘이 됩니다. ;)

본 코드는 [세종기업데이터](http://www.sejongdata.com)에 공개된 기업들의 재무데이터를 수집하게 작성하였습니다.<br>
웹페이지내 게시된 내용의 저작권은 페이지 운용사에 있으나 기업 재무데이터가 저작권이 없는 정보이기 때문에 데이터와 함께 공개합니다.<br>
문제가 있을시 알려주시면 해결하기 위해 노력하겠습니다.

codeData.csv와 cdedData.RData는 각 기업코드와 기업명입니다.<br>
dataAll.csv와 dataAll.RData는 수집이 완료된 데이터 입니다.<br>
완료일은 2017년 2월 4일이며 가장 최신의 자료가 필요하지 않는한 본 저장소에 저장해둔 데이터를 사용하시길 권장합니다.<br>

dataAll은 아래와 같은 데이터를 가지고 있습니다.<br>
매출액, 영업이익, 순이익, 연결순이익. 자산총계 ,부채총계, 자본총계, 부채비율, 영업이익률, 순이익률, 연결순이익률, ROE.순이익., ROE.연결순이익., 매출액.성장률, 영업이익.성장률, 순이익.성장률

# R에서 사용법
```
# 코드 데이터 가져오기
url<-"https://github.com/mrchypark/sejongFinData/raw/master/codeData.csv"
download.file(url,destfile = "./codeData.csv")
codeData<-read.csv("./codeData.csv",stringsAsFactors = F)

# 재무 데이터 가져오기
url<-"https://github.com/mrchypark/sejongFinData/raw/master/dataAll.csv"
download.file(url,destfile = "./dataAll.csv")
dataAll<-read.csv("./dataAll.csv",stringsAsFactors = F)
```

기계적으로 가져와서 데이터를 다 확인해보지 못했습니다.<br>
혹시 문제가 있는 걸 발견하시면 [이슈](https://github.com/mrchypark/sejongFinData/issues/new)에 제보해주세요. <br>
데이터에 대한 설명을 작성하지 못했습니다. 작성을 도와주시고 풀리퀘 날려주시면 큰 도움이 됩니다.<br>
감사합니다.


본 저장소는 MIT 라이선스를 따릅니다.
