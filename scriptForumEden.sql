#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: section
#------------------------------------------------------------

CREATE TABLE section(
        id           int (11) Auto_increment  NOT NULL ,
        name_section Varchar (65) ,
        description  Varchar (255) ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: post
#------------------------------------------------------------

CREATE TABLE post(
        id        int (11) Auto_increment  NOT NULL ,
        post      Varchar (255) ,
        date_post Date ,
        id_user   Int ,
        id_topics Int ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: user
#------------------------------------------------------------

CREATE TABLE user(
        id       int (11) Auto_increment  NOT NULL ,
        pseudo   Varchar (65) ,
        age      Int ,
        pays     Varchar (45) ,
        sex      Bool ,
        id_group Int ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: group
#------------------------------------------------------------

CREATE TABLE group(
        id     int (11) Auto_increment  NOT NULL ,
        status Varchar (45) ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: topics
#------------------------------------------------------------

CREATE TABLE topics(
        id         int (11) Auto_increment  NOT NULL ,
        titile     Varchar (65) ,
        id_user    Int ,
        id_section Int ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;

ALTER TABLE post ADD CONSTRAINT FK_post_id_user FOREIGN KEY (id_user) REFERENCES user(id);
ALTER TABLE post ADD CONSTRAINT FK_post_id_topics FOREIGN KEY (id_topics) REFERENCES topics(id);
ALTER TABLE user ADD CONSTRAINT FK_user_id_group FOREIGN KEY (id_group) REFERENCES group(id);
ALTER TABLE topics ADD CONSTRAINT FK_topics_id_user FOREIGN KEY (id_user) REFERENCES user(id);
ALTER TABLE topics ADD CONSTRAINT FK_topics_id_section FOREIGN KEY (id_section) REFERENCES section(id);
