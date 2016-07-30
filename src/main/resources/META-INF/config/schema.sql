DROP TABLE IF EXISTS STATE;
CREATE TABLE STATE (
  STATE_ID INT(2)      NOT NULL AUTO_INCREMENT,
  LABEL    VARCHAR(20) NOT NULL,
  VERSION  INT         NOT NULL DEFAULT 0,
  PRIMARY KEY (STATE_ID),
);

DROP TABLE IF EXISTS PACKET;
CREATE TABLE PACKET (
  PACKET_ID   INT(11) NOT NULL AUTO_INCREMENT,
  STATE_ID_FK INT(2)  NOT NULL,
  VERSION     INT     NOT NULL DEFAULT 0,
  PRIMARY KEY (PACKET_ID),
  FOREIGN KEY (STATE_ID_FK) REFERENCES STATE (STATE_ID)
);

DROP TABLE IF EXISTS COMBO_DATA;
CREATE TABLE COMBO_DATA (
  COMBO_DATA_ID INT(11)     NOT NULL AUTO_INCREMENT,
  LABEL         VARCHAR(20) NOT NULL,
  VERSION       INT         NOT NULL DEFAULT 0,
  PRIMARY KEY (COMBO_DATA_ID),
  UNIQUE UQ_COMBO_DATA_1 (LABEL)
);

DROP TABLE IF EXISTS COMPT;
CREATE TABLE COMPT (
  COMPT_ID     INT(11)     NOT NULL AUTO_INCREMENT,
  LABEL        VARCHAR(75) NOT NULL,
  PACKET_ID_FK INT(11)     NOT NULL,
  VERSION      INT         NOT NULL DEFAULT 0,
  PRIMARY KEY (COMPT_ID),
  FOREIGN KEY (PACKET_ID_FK) REFERENCES PACKET (PACKET_ID),
  UNIQUE UQ_COMPT_1 (PACKET_ID_FK, LABEL)
);

DROP TABLE IF EXISTS DATA_COMPT;
CREATE TABLE DATA_COMPT (
  DATA_COMPT_ID    INT(21) NOT NULL AUTO_INCREMENT,
  COMPT_ID_FK      INT(11) NOT NULL,
  STATE_ID_FK      INT(1)  NOT NULL,
  COMBO_DATA_ID_FK INT(11) NOT NULL,
  CHECKED          CHAR(1) NOT NULL,
  VERSION          INT     NOT NULL DEFAULT 0,

  PRIMARY KEY (DATA_COMPT_ID),
  FOREIGN KEY (COMPT_ID_FK) REFERENCES COMPT (COMPT_ID)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
  FOREIGN KEY (STATE_ID_FK) REFERENCES STATE (STATE_ID),
  FOREIGN KEY (COMBO_DATA_ID_FK) REFERENCES COMBO_DATA (COMBO_DATA_ID),
  UNIQUE UQ_DATA_COMPT_1 (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK)
);


