create table bootfire.ranking_algo (
	rank_algo_id INT AUTO_INCREMENT PRIMARY key,
	description VARCHAR(255),
	score INT ,	
	updated_at DATE
);


# 인덱싱 -> DB 
# 
CREATE TABLE bootfire.bootcamp_detail (
  camp_id INT ,
  description VARCHAR(255), 
  
  PRIMARY KEY (camp_id),
  FOREIGN KEY (camp_id) REFERENCES bootfire.bootcamp (camp_id)
);

