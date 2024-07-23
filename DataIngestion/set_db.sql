# 테이블 생성 코드 파일
DROP DATABASE IF EXISTS lotto_data_db;
CREATE database lotto_data_db;

USE lotto_data_db;

CREATE TABLE `lotto_results_2024` (
`drwNo` int primary key,
`drwNoDate` date,

`drwtNo1` int not null,
`drwtNo2` int not null,
`drwtNo3` int not null,
`drwtNo4` int not null,
`drwtNo5` int not null,
`drwtNo6` int not null,
`bnusNo` int not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

select * from lotto_results_2024;
