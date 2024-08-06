# DB 생성 코드 파일
-- DROP DATABASE IF EXISTS lotto_data_db;
-- CREATE database lotto_data_db;

USE lotto_data_db;

# table 생성
DROP TABLE IF EXISTS `lotto_results_2024`; 
CREATE TABLE `lotto_results_2024` (
`drwNo` int primary key,
`drwNoDate` date not null,
`drwtNo1` int not null,
`drwtNo2` int not null,
`drwtNo3` int not null,
`drwtNo4` int not null,
`drwtNo5` int not null,
`drwtNo6` int not null,
`bnusNo` int not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

select drwNo as "회차", drwNoDate as "추첨날짜", drwtNo1 as "1번",drwtNo2 as "2번",drwtNo3 as "3번",
	   drwtNo4 as "4번",drwtNo5 as "5번",drwtNo6 as "6번", bnusNo as "보너스 번호" 
from lotto_results_2024;
DELETE FROM `lotto_results_2024`;
rollback;
describe lotto_results_2024;
