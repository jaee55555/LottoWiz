USE lotto_data_db;

# table 생성
DROP TABLE IF EXISTS `lotto_usr`;
CREATE TABLE `lotto_usr` (
`no` int auto_increment primary key,
`numLine` varchar(13),
`drwtNo1` int not null,
`drwtNo2` int not null,
`drwtNo3` int not null,
`drwtNo4` int not null,
`drwtNo5` int not null,
`drwtNo6` int not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

select no, drwtNo1 as "1번",drwtNo2 as "2번",drwtNo3 as "3번",drwtNo4 as "4번",drwtNo5 as "5번",drwtNo6 as "6번" 
from lotto_usr;

describe lotto_usr;

insert into lotto_usr (numLine, drwtNo1, drwtNo2, drwtNo3, drwtNo4, drwtNo5, drwtNo6) values("1316253644", 1, 3, 16, 25, 36, 44);