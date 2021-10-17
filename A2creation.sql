-- Chezer Banagua 106145170

--don't forget to add constraint


CREATE TABLE  TBLCOUNTRY  (
   country_id   number(20) PRIMARY KEY ,
   country   varchar2(100)
 
);
CREATE TABLE  TBLLOCATIONS  (
   location_id  number(4)  PRIMARY KEY ,
   city  varchar2(100) ,
   province_state varchar2(100) ,
   country_id   number(20),
 CONSTRAINT tblloc_country_id_fk FOREIGN KEY(country_id) 
    REFERENCES TBLCOUNTRY(country_id)
);



CREATE TABLE  TBLAGENCY  (
   agency_id   number(4) PRIMARY KEY ,
   agency_name  varchar2(100),
   phone_number   varchar2(10)
);



CREATE TABLE  TBLAREA  (
   area_id    number(4) PRIMARY KEY ,
   area_name   varchar2(100),
   school  varchar2(300) ,
   comments   varchar2(200)
);

CREATE TABLE  TBLLOT  (
   lot_id    number(20) PRIMARY KEY ,
   lot_type   varchar2(100)
);


CREATE TABLE  TBLPROPERTYSIZE  (
   propertysize_id number(4)  PRIMARY KEY ,
   square_area  number(20),
   monthly_fee  decimal(10,2),
   lot_id   number(10),
  CONSTRAINT tblpropsize_lot_id_fk FOREIGN KEY(lot_id) REFERENCES TBLLOT(lot_id)

);

CREATE TABLE  TBLADTYPE  (
   adtype_id  number(20)  PRIMARY KEY ,
   adtype_name   varchar2(100)
);


CREATE TABLE  TBLADS  (
   ad_id    number(4) PRIMARY KEY ,
   ad_name  varchar2(100) ,
   phone_number varchar2(10) ,
   start_date varchar2(30) ,
   ad_cost  decimal(10,2) ,
   adtype_id  number(20),
   CONSTRAINT tbladstype_adtype_id_fk FOREIGN KEY(adtype_id)
   REFERENCES TBLADTYPE(adtype_id)

);


CREATE TABLE  TBLTRADE  (
   trade_id   number(9) PRIMARY KEY ,
   buy_sell  char(2),
   percentage   decimal(1,4),
   total_cost  decimal(10,2) ,
   referall varchar2(20)  ,
   property_id  number(10) 
);




CREATE TABLE TBLPROPERTIES  (
   property_id      number(4)  PRIMARY KEY ,
   agency_id        number(4) ,
   street_address   varchar(40) ,
   location_id      number(4),
   postalcode       varchar(12),
   bathrooms        int,
   bedrooms         int,
   listing          decimal(10,2),
   propertysize_id  number(4),
   area_id          number(4),
   ad_id            number(4),
   
   CONSTRAINT tblpro_location_id_fk FOREIGN KEY(location_id) 
     REFERENCES TBLLOCATIONS(location_id),
   Constraint tblpro_agency_id_fk foreign key(agency_id)
        References tblagency(agency_id),
    CONSTRAINT tblpro_ad_id_fk FOREIGN KEY(ad_id) 
        REFERENCES tblads(ad_id)

);  


CREATE TABLE  TBLCLIENT  (
   client_id  number(10,0)  PRIMARY KEY ,
   first_name  varchar2(100),
   last_name  varchar2(100),
   phone_number varchar2(10),
   email_address  varchar2(20),
   trade_id  number(9),
   CONSTRAINT tblclient_trade_id_fk FOREIGN KEY(trade_id)
        REFERENCES TBLTRADE(trade_id)
);

