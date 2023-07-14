
# fk 제거
ALTER TABLE bootfire.board DROP FOREIGN KEY board_ibfk_1;
ALTER TABLE bootfire.post DROP FOREIGN KEY post_ibfk_1;

# auto increment 추가
ALTER TABLE bootfire.department MODIFY department_id INT NOT NULL auto_increment;
ALTER TABLE bootfire.board MODIFY board_id INT NOT NULL auto_increment;


# 컬럼 추가
ALTER TABLE bootfire.ranking_algo 
ADD COLUMN camp_id INT;


# 외래키 설정 
ALTER TABLE bootfire.user  
ADD CONSTRAINT user_ibfk_1 
FOREIGN KEY (camp_id)
REFERENCES bootfire.bootcamp(camp_id);


ALTER TABLE bootfire.post MODIFY COLUMN user_id int(11) NOT NULL;


# 
drop table bootfire.department;

#
alter table bootfire.board drop column department_id;

# 티맥스 티베로 
# 중소기업 -> 유일의 DB
