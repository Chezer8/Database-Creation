-- Chezer Banagua 106145170

---AD TYPE
INSERT INTO tbladtype(adtype_id,adtype_name)
VALUES (01,'Magazine');
INSERT INTO tbladtype(adtype_id,adtype_name)
VALUES (02,'Website');
INSERT INTO tbladtype(adtype_id,adtype_name)
VALUES (03,'Newspaper');
--

---ADS
INSERT INTO tblads
VALUES (101,'Real Magazine','123456789',2019-10-1,100,01);
INSERT INTO tblads
VALUES (102,'Estate Website','121534898',2019-8-10,150,02);
INSERT INTO tblads
VALUES (103,'New News Newspaper','123458799',2018-1-1,100,03);
---


----lot
INSERT INTO tbllot(lot_id,lot_type)
VALUES(01,'Townhouse');
INSERT INTO tbllot(lot_id,lot_type)
VALUES(02,'House');
INSERT INTO tbllot(lot_id,lot_type)
VALUES(03,'Condominium');
--

---propertysize

INSERT INTO tblpropertysize
VALUES (11,840,1000,3);
INSERT INTO tblpropertysize
VALUES (22,1000,1500,3);
INSERT INTO tblpropertysize
VALUES (33,800,1000,3);

--

?---country
INSERT INTO tblcountry(country_id,country)
VALUES (10,'CANADA');

INSERT INTO tblcountry(country_id,country)
VALUES (20,'UNITED STATES OF AMERICA');
INSERT INTO tblcountry(country_id,country)
VALUES (30,'BRAZIL');
--

---LOCATIONS
INSERT INTO tbllocations(location_id,city,province_state,country_id)
VALUES (100,'Toronto','Ontario',10);
INSERT INTO tbllocations(location_id,city,province_state,country_id)
VALUES (200,'Vancouver','British Columbia',10);
INSERT INTO tbllocations(location_id,city,province_state,country_id)
VALUES (300,'New York','New York',20);
--
----AREA
INSERT INTO tblarea(area_id,area_name,school,comments)
VALUES (10,'North York','York University, North Highschool',' This area consists of college/uni students that have potential');
INSERT INTO tblarea(area_id,area_name,school,comments)
VALUES (20,'East York','East Elementary, Blessed Mary Elementary',' Be careful in this area, since it consists of younger people');
INSERT INTO tblarea(area_id,area_name,school,comments)
VALUES (30,'South York','South Highschool, St.Catherine Highschool',
'A bunch of teens roam around this area in lunch time and after school.');
--

---AGENCY
INSERT INTO TBLAGENCY VALUES (11,'KW',647885);
INSERT INTO TBLAGENCY VALUES (12,'AW',647886);
INSERT INTO TBLAGENCY VALUES (13,'CW',647887);
--

--CLIENT
INSERT INTO TBLCLIENT VALUES (12,'scot','kim',647888231,'123@gmail.com',1231);
INSERT INTO TBLCLIENT VALUES (13,'vlad','lee',647412231,'1d3@gmail.com',1230);
INSERT INTO TBLCLIENT VALUES (14,'prel','eli',647123231,'ds3@gmail.com',1221);
--


--TRADE


--
----PROPERTIES
INSERT INTO tblproperties(property_id,agency_id,street_address,location_id,postal_code,
bathrooms,bedrooms,listing,propertysize_id,ad_id)
VALUES (1234,,'101 anderson street',,'m2i 1j3'');
--