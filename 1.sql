-- 1. 운동부 TABLE을 작성하라.

-- TEAM : 팀 아이디, 지역, 팀 명, 개설 날짜, 전화번호, 홈페이지

-- PLAYER : 선수번호, 선수 명, 등록일, 포지션, 키, 팀 아이디

-- 3개의 TEAM을  등록합니다.

-- 3 개의 TEAM에 선수를 3 ~ 9명을 등록(추가)합니다.

-- 선수를 입력하면 그 선수의 팀 명과 전화번호, 홈페이지가 출력되도록 합니다. 

-- JOIN 해 보도록 합니다. 

-- 팀명으로 팀원들이 출력되도록 합니다. 


CREATE TABLE Team (
    TeamID varchar(255),-- 
    Location varchar(255),
    TeamName varchar(255),
    SinceDate date,
    Phone int,
    Homepage varchar(255)
);

CREATE TABLE Player (
    Num int,
    PlayerName varchar(255),
    P_RegDate date,
    Position varchar(255),
    Tall int,
    TeamID varchar(255)
);

insert into Team (TeamID, Location, TeamName, SinceDate, Phone, Homepage) values ('Lion', '대구', '삼성', 20220601, 01011111111, 'www.lions.com');
insert into Team (TeamID, Location, TeamName, SinceDate, Phone, Homepage) values ('Tiger', '광주', '기아', 20220602, 01022222222, 'www.tigers.com');
insert into Team (TeamID, Location, TeamName, SinceDate, Phone, Homepage) values ('Twins', '잠실', '엘지', 20220603, 01033333333, 'www.twinss.com');


insert into Player (Num, PlayerName, P_RegDate, Position, Tall, TeamID) values ('1', '양준혁', 20220603, '투수', 178, 'Tiger');
insert into Player (Num, PlayerName, P_RegDate, Position, Tall, TeamID) values ('2', '최형준', 20220603, '투수', 178, 'Lion');
insert into Player (Num, PlayerName, P_RegDate, Position, Tall, TeamID) values ('3', '도수호', 20220603, '투수', 178, 'Twins');
insert into Player (Num, PlayerName, P_RegDate, Position, Tall, TeamID) values ('4', '오지원', 20220603, '투수', 178, 'Tiger');
insert into Player (Num, PlayerName, P_RegDate, Position, Tall, TeamID) values ('5', '장혜원', 20220603, '투수', 178, 'Lion');
insert into Player (Num, PlayerName, P_RegDate, Position, Tall, TeamID) values ('6', '최솔지', 20220603, '투수', 178, 'Twins');
insert into Player (Num, PlayerName, P_RegDate, Position, Tall, TeamID) values ('7', '천예원', 20220603, '투수', 178, 'Tiger');
insert into Player (Num, PlayerName, P_RegDate, Position, Tall, TeamID) values ('8', '오명주', 20220603, '투수', 178, 'Lion');
insert into Player (Num, PlayerName, P_RegDate, Position, Tall, TeamID) values ('9', '이성은', 20220603, '투수', 178, 'Twins');

select b.TeamID, a.Phone, a.Homepage
from Team a
	join Player b
where a.TeamID = b.TeamID and b.PlayerName = '양준혁';

select b.PlayerName
from Team a
	join Player b
where a.TeamID = 'Tiger'
