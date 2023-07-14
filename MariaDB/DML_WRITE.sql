insert into bootfire.department (`name`, `description`) 
						values ('비밀', '고민을 나누는 게시판');
					
insert into bootfire.board (`department_id` , `name`, `description`) 
						values (1, '움직여보아요', '배고파서 못 움직여요');

# 데이터 제거
DELETE FROM bootfire.department 
WHERE board_id = 1;
