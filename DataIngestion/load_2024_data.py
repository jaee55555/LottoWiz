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
def put_data(start, end, basic_url, cur):
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
            bnus_no = int(data["bnusNo"])   #보너스 번호
            str_insert = f"INSERT INTO lotto_results_2024 " \
                         f"VALUES({drwno},'{drwno_date}',{drwt_no1},{drwt_no2},{drwt_no3}," \
                         f"{drwt_no4}, {drwt_no5}, {drwt_no6}, {bnus_no})"
            cur.execute(str_insert)


# print("Plz Set Start Drawing Number", end=" ")
# N = int(sys.stdin.readline())
# print("Plz Set Last Drawing Number", end=" ")
# M = int(sys.stdin.readline())
N, M = 1101, 1129

basic_lotto_api_url = "https://www.dhlottery.co.kr/common.do?method=getLottoNumber&drwNo="

conn = pymysql.connect(host='127.0.0.1', user='ureca', password='ureca', db='lotto_data_db', charset='utf8')
cur = conn.cursor()
put_data(N, M, basic_lotto_api_url, cur)

conn.commit()
conn.close()
