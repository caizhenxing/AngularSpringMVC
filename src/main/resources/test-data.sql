INSERT INTO STATE (LABEL, VERSION) VALUES ('PRE_COMMITEE', '0');
INSERT INTO STATE (LABEL, VERSION) VALUES ('IN_COMMITEE', '0');
INSERT INTO STATE (LABEL, VERSION) VALUES ('FINAL', '0');

INSERT INTO PACKET (STATE_ID_FK, VERSION) VALUES ('1', '0');

INSERT INTO COMBO_DATA (LABEL, VERSION) VALUES ('VERY_WEAK', '0');
INSERT INTO COMBO_DATA (LABEL, VERSION) VALUES ('WEAK', '0');
INSERT INTO COMBO_DATA (LABEL, VERSION) VALUES ('MODERATE', '0');
INSERT INTO COMBO_DATA (LABEL, VERSION) VALUES ('ADEQUATE', '0');
INSERT INTO COMBO_DATA (LABEL, VERSION) VALUES ('STRONG', '0');
INSERT INTO COMBO_DATA (LABEL, VERSION) VALUES ('VERY_STRONG', '0');

INSERT INTO COMPT (LABEL, PACKET_ID_FK, VERSION) VALUES ('Risk position With Extraordinary Support', '1', '0');
INSERT INTO COMPT (LABEL, PACKET_ID_FK, VERSION) VALUES ('Growth And Changes In Exposure', '1', '0');
INSERT INTO COMPT (LABEL, PACKET_ID_FK, VERSION) VALUES ('Risk Concentrations And Risk Diversification', '1', '0');
INSERT INTO COMPT (LABEL, PACKET_ID_FK, VERSION) VALUES ('Complexity', '1', '0');
INSERT INTO COMPT (LABEL, PACKET_ID_FK, VERSION) VALUES ('Risks Not covered By RACF', '1', '0');
INSERT INTO COMPT (LABEL, PACKET_ID_FK, VERSION) VALUES ('Evidence Of Stronger Or Weaker Loss Experience', '1', '0');

INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('1', '1', '1', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('1', '1', '2', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('1', '1', '3', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('1', '1', '4', 'y', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('1', '1', '5', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('1', '1', '6', 'n', '0');

INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('1', '2', '1', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('1', '2', '2', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('1', '2', '3', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('1', '2', '4', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('1', '2', '5', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('1', '2', '6', 'y', '0');

INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('1', '3', '1', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('1', '3', '2', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('1', '3', '3', 'y', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('1', '3', '4', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('1', '3', '5', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('1', '3', '6', 'n', '0');

INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('2', '1', '1', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('2', '1', '2', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('2', '1', '3', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('2', '1', '4', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('2', '1', '5', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('2', '1', '6', 'y', '0');

INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('2', '2', '1', 'y', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('2', '2', '2', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('2', '2', '3', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('2', '2', '4', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('2', '2', '5', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('2', '2', '6', 'n', '0');

INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('2', '3', '1', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('2', '3', '2', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('2', '3', '3', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('2', '3', '4', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('2', '3', '5', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('2', '3', '6', 'y', '0');

INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('3', '1', '1', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('3', '1', '2', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('3', '1', '3', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('3', '1', '4', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('3', '1', '5', 'y', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('3', '1', '6', 'n', '0');

INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('3', '2', '1', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('3', '2', '2', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('3', '2', '3', 'y', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('3', '2', '4', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('3', '2', '5', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('3', '2', '6', 'n', '0');

INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('3', '3', '1', 'y', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('3', '3', '2', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('3', '3', '3', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('3', '3', '4', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('3', '3', '5', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('3', '3', '6', 'n', '0');

INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('4', '1', '1', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('4', '1', '2', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('4', '1', '3', 'y', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('4', '1', '4', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('4', '1', '5', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('4', '1', '6', 'n', '0');

INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('4', '2', '1', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('4', '2', '2', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('4', '2', '3', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('4', '2', '4', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('4', '2', '5', 'y', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('4', '2', '6', 'n', '0');

INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('4', '3', '1', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('4', '3', '2', 'y', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('4', '3', '3', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('4', '3', '4', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('4', '3', '5', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('4', '3', '6', 'n', '0');

INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('5', '1', '1', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('5', '1', '2', 'y', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('5', '1', '3', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('5', '1', '4', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('5', '1', '5', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('5', '1', '6', 'n', '0');

INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('5', '2', '1', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('5', '2', '2', 'y', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('5', '2', '3', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('5', '2', '4', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('5', '2', '5', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('5', '2', '6', 'n', '0');

INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('5', '3', '1', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('5', '3', '2', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('5', '3', '3', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('5', '3', '4', 'y', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('5', '3', '5', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('5', '3', '6', 'n', '0');

INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('6', '1', '1', 'y', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('6', '1', '2', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('6', '1', '3', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('6', '1', '4', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('6', '1', '5', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('6', '1', '6', 'n', '0');

INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('6', '2', '1', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('6', '2', '2', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('6', '2', '3', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('6', '2', '4', 'y', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('6', '2', '5', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('6', '2', '6', 'n', '0');

INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('6', '3', '1', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('6', '3', '2', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('6', '3', '3', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('6', '3', '4', 'n', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('6', '3', '5', 'y', '0');
INSERT INTO DATA_COMPT (COMPT_ID_FK, STATE_ID_FK, COMBO_DATA_ID_FK, CHECKED, VERSION) VALUES ('6', '3', '6', 'n', '0');
