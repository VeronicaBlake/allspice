CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';

CREATE TABLE recipes(  
    id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
    title varchar(255) comment 'recipe title',
    body varchar(255) comment 'recipe description',
    cookTime int comment 'recipe cook time',
    prepTime int comment 'recipe prep time',
    creatorId VARCHAR(255) COMMENT 'creatorId',
    FOREIGN KEY (creatorId) REFERENCES accounts(id) ON DELETE CASCADE
) default charset utf8 comment '';

CREATE TABLE steps(  
    id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
    create_time DATETIME COMMENT 'create time',
    update_time DATETIME COMMENT 'update time',
    body varchar(255) comment 'step description',
    recipeId int comment 'recipeId',
    creatorId VARCHAR(255) comment 'creatorId',
    FOREIGN KEY (creatorId) REFERENCES accounts(id) ON DELETE CASCADE,
    FOREIGN KEY (recipeId) REFERENCES recipes(id) ON DELETE CASCADE
) default charset utf8 comment '';
