# written by jaee55555

# data only 2024
# start drwNo = 1101
# recent drwNo = 1129
# basic lotto api url = "https://www.dhlottery.co.kr/common.do?method=getLottoNumber&drwNo="

from urllib.request import urlopen
from datetime import datetime
import json
import sys
import pymysql


# push data to DB
def put_data(start, end, basic_url, curr):
    # take data from lotto api
    for cnt in range(start, end + 1):
        url = basic_url + str(cnt)
        result_data = urlopen(url)
        result = result_data.read()
        data = json.loads(result)
        if data["returnValue"] == "success":
            print(data)
            drwno = int(data["drwNo"]) #회차 번호
            drwno_date = datetime.strptime(data["drwNoDate"], "%Y-%m-%d") #추첨 날짜
            drwt_no1 = int(data["drwtNo1"]) #당첨 번호 1
            drwt_no2 = int(data["drwtNo2"]) #당첨 번호 2
            drwt_no3 = int(data["drwtNo3"]) #당첨 번호 3
            drwt_no4 = int(data["drwtNo4"]) #당첨 번호 4
            drwt_no5 = int(data["drwtNo5"]) #당첨 번호 5
            drwt_no6 = int(data["drwtNo6"]) #당첨 번호 6
            bnun_no = int(data["bnusNo"]) #보너스 번호
            str_num = str(drwt_no1)+str(drwt_no2)+str(drwt_no3)+str(drwt_no4)+str(drwt_no5)+str(drwt_no6)
            str_insert = f"INSERT INTO lotto_results_2024 " \
                         f"VALUES({drwno},'{drwno_date}', {str_num}, " \
                         f"{drwt_no1},{drwt_no2},{drwt_no3}," \
                         f"{drwt_no4}, {drwt_no5}, {drwt_no6}, {bnun_no})"
            curr.execute(str_insert)


#N = start
#M = end
N, M = 1101, 1129

basic_lotto_api_url = "https://www.dhlottery.co.kr/common.do?method=getLottoNumber&drwNo="


#접속할 db 정보 받아오기
#DB 정보 비공개
with open('../info.json') as f:
    db_info = json.load(f)
db_host = db_info["db_host"]
db_id = db_info["db_id"]
db_pw = db_info["db_pw"]
db_name = db_info["db_name"]

conn = pymysql.connect(host=db_host, user=db_id, password=db_pw, db=db_name, charset='utf8')
cur = conn.cursor()
print("Start Store Data")
put_data(N, M, basic_lotto_api_url, cur)
print("Finish Store Data")
conn.commit()
conn.close()
