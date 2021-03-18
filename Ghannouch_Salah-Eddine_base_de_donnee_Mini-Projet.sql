1)==> LA TABLE CLUB

/* la création */

create table CLUB (
	ID_CLUB varchar2(20) PRIMARY KEY,
               NOM_CLUB VARCHAR(20),
	ADRESSE_CLUB VARCHAR(50),
	EMAIL_CLUB VARCHAR(50),
	TELEPHONE_CLUB VARCHAR(50)
);

/* l'insertion */

insert into CLUB (ID_CLUB,  NOM_CLUB, ADRESSE_CLUB, EMAIL_CLUB, TELEPHONE_CLUB) values ('EA478414', 'Espoir','Safi Maroc','hfrisdick0@smugmug.com', '483-729-8483');

insert into CLUB (ID_CLUB,  NOM_CLUB, ADRESSE_CLUB, EMAIL_CLUB, TELEPHONE_CLUB) values ('EA777474', 'Widad','El Jadida Maroc','bpude1@dell.com', '790-346-3015');

insert into CLUB (ID_CLUB,  NOM_CLUB, ADRESSE_CLUB, EMAIL_CLUB, TELEPHONE_CLUB) values ('EN182425', 'El Amale','Marrakech Maroc','fcotilard2@furl.net', '668-551-7059');

insert into CLUB (ID_CLUB,  NOM_CLUB, ADRESSE_CLUB, EMAIL_CLUB, TELEPHONE_CLUB) values ('ESA025428', 'Lion Safi','Safi Maroc','tbonhan3@statcounter.com', '979-235-6609');

insert into CLUB (ID_CLUB,  NOM_CLUB, ADRESSE_CLUB, EMAIL_CLUB, TELEPHONE_CLUB) values ('NNA147587', 'El Nassare','Marrakech Maroc','kpeterffy4@howstuffworks.com', '159-976-6658');

insert into CLUB (ID_CLUB,  NOM_CLUB, ADRESSE_CLUB, EMAIL_CLUB, TELEPHONE_CLUB) values ('NNA156502', 'EL Nahdda','Marrakech Maroc','jcardenosa5@xinhuanet.com', '766-869-5032');

insert into CLUB (ID_CLUB,  NOM_CLUB, ADRESSE_CLUB, EMAIL_CLUB, TELEPHONE_CLUB) values ('OA472532', 'Olympique Rabat','Rabat Maroc','despie6@eventbrite.com', '187-930-4096');

insert into CLUB (ID_CLUB,  NOM_CLUB, ADRESSE_CLUB, EMAIL_CLUB, TELEPHONE_CLUB) values ('SS453633', 'Bordo France','Bordo France','mgeerling7@pcworld.com', '489-402-3974');

insert into CLUB (ID_CLUB,  NOM_CLUB, ADRESSE_CLUB, EMAIL_CLUB, TELEPHONE_CLUB) values ('VA152242', 'vectorias France','Paris France','rmathan8@craigslist.org', '440-495-4853');

***********************************************************************************************************************************************************************************************************************************

2)==> LA TABLE EQUIPE

/* la création */

CREATE TABLE EQUIPE (
	ID_EQUIPE VARCHAR2(20),
	NOM_EQUIPE VARCHAR2(50),
	Nat_EQUIPE VARCHAR2(50),
	ID_CLUB VARCHAR2(20),
   CONSTRAINT id_equipe_pk PRIMARY KEY (ID_EQUIPE))
   FOREIGN KEY(id_club) REFERENCES club(id_club)
);

/* l'insertion */

insert into EQUIPE (ID_EQUIPE, NOM_EQUIPE, Nat_EQUIPE, ID_CLUB) values ('120', 'OC Rabat', 'Marocain', 'EA478414');

insert into EQUIPE (ID_EQUIPE, NOM_EQUIPE, Nat_EQUIPE, ID_CLUB) values ('121', 'NC Marrakech', 'Marocain', 'EA777474');

insert into EQUIPE (ID_EQUIPE, NOM_EQUIPE, Nat_EQUIPE, ID_CLUB) values ('150', 'FC Safi', 'Marocain', 'EN182425');

insert into EQUIPE (ID_EQUIPE, NOM_EQUIPE, Nat_EQUIPE, ID_CLUB) values ('100', 'ENC Marrakech', 'Marocain', 'ESA025428');

insert into EQUIPE (ID_EQUIPE, NOM_EQUIPE, Nat_EQUIPE, ID_CLUB) values ('110', 'AC Marrakech', 'Marocain', 'NNA147587');

insert into EQUIPE (ID_EQUIPE, NOM_EQUIPE, Nat_EQUIPE, ID_CLUB) values ('113', 'LC Safi', 'Marocain', 'ESA025428');

insert into EQUIPE (ID_EQUIPE, NOM_EQUIPE, Nat_EQUIPE, ID_CLUB) values ('115' , 'BC France', 'France', 'VA152242');

***********************************************************************************************************************************************************************************************************************************

3)==> LA TABLE MEMBRE_ADMINISTRATION

/* la création */

CREATE TABLE MEMBRE_ADMINISTRATION (
	CIN_MEMBRE VARCHAR2(20),
	NUMERO_MEMBRE NUMBER(2) NOT NULL,
	NOM_MEMBRE VARCHAR(50) NOT NULL,
	SALAIRE_MEMBRE number(8),
	THELEPHONE_MEMBRE VARCHAR(20),
	LICENSE_MEMBRE NUMBER(6),
      CONSTRAINT cin_membre_pk PRIMARY KEY(CIN_MEMBRE))
     FOREIGN KEY(id_club) REFERENCES club(id_club)
);

/* l'insertion */

insert into MEMBRE_ADMINISTRATION (CIN_MEMBRE, NUMERO_MEMBRE, NOM_MEMBRE, SALAIRE_MEMBRE, 
THELEPHONE_MEMBRE, LICENSE_MEMBRE,ID_CLUB) values ('17', 35, 'Lovekin', 2550, '168-784-3691', 90,'EA478414');

insert into MEMBRE_ADMINISTRATION (CIN_MEMBRE, NUMERO_MEMBRE, NOM_MEMBRE, SALAIRE_MEMBRE, 
THELEPHONE_MEMBRE, LICENSE_MEMBRE,ID_CLUB) values ('77', 36, 'Davison', 6500, '801-510-2952', 6,'EA777474');

insert into MEMBRE_ADMINISTRATION(CIN_MEMBRE, NUMERO_MEMBRE, NOM_MEMBRE, SALAIRE_MEMBRE, 
THELEPHONE_MEMBRE, LICENSE_MEMBRE,ID_CLUB) values ('28', 37, 'Striker', 7500, '193-988-9795', 58,'EN182425');

insert into MEMBRE_ADMINISTRATION (CIN_MEMBRE, NUMERO_MEMBRE, NOM_MEMBRE, SALAIRE_MEMBRE, 
THELEPHONE_MEMBRE, LICENSE_MEMBRE,ID_CLUB) values ('3', 38, 'Salah Eddine Ramiz', 7900, '871-785-7878', 29,'ESA025428');
'
insert into MEMBRE_ADMINISTRATION (CIN_MEMBRE, NUMERO_MEMBRE, NOM_MEMBRE, SALAIRE_MEMBRE, 
THELEPHONE_MEMBRE, LICENSE_MEMBRE,ID_CLUB) values ('19', 39, 'Khalid Ben Hamo', 7800, '658-554-8393', 61,'NNA147587');

insert into MEMBRE_ADMINISTRATION (CIN_MEMBRE, NUMERO_MEMBRE, NOM_MEMBRE, SALAIRE_MEMBRE, 
THELEPHONE_MEMBRE, LICENSE_MEMBRE,ID_CLUB) values ('18', 40, 'Assmae Konari', 6980, '418-555-8793', 47,'NNA156502');

insert into MEMBRE_ADMINISTRATION (CIN_MEMBRE, NUMERO_MEMBRE, NOM_MEMBRE, SALAIRE_MEMBRE, 
THELEPHONE_MEMBRE, LICENSE_MEMBRE,ID_CLUB) values ('20', 41, 'Chadia Sobhi', 9500, '258-565-520', 31,'OA472532');

insert into MEMBRE_ADMINISTRATION (CIN_MEMBRE, NUMERO_MEMBRE, NOM_MEMBRE, SALAIRE_MEMBRE, 
THELEPHONE_MEMBRE, LICENSE_MEMBRE,ID_CLUB) values ('13', 42, 'Brahim Ait Lmaati',8500, '250-577-8393', 5,'SS453633');


***********************************************************************************************************************************************************************************************************************************

4)==> LA TABLE JOUEUR

/* la création */

CREATE TABLE JOUEUR (
	CIN_JOUEUR varchar2(20),
	NOM_JOUEUR VARCHAR(50) NOT NULL,
	TELEPHONE_JOUEUR VARCHAR(20),
	ADRESSE_JOUEUR VARCHAR(50),
	EMAIL_JOUEUR VARCHAR(20),
	SEXE_JOUEUR VARCHAR(10),
        ID_CLUB VARCHAR2(20),
        CONSTRAINT cin_joueur_pk PRIMARY KEY (CIN_JOUEUR))
          FOREIGN KEY(id_club) REFERENCES club(id_club)
);

/* l'insertion */

insert into JOUEUR (CIN_JOUEUR, NOM_JOUEUR, TELEPHONE_JOUEUR, ADRESSE_JOUEUR, EMAIL_JOUEUR, 
SEXE_JOUEUR,ID_CLUB) values ('210', 'Hensmans', '918-376-3178','6215 International Park', 'hensmans@wely.com', 'Male','EA478414');


insert into JOUEUR (CIN_JOUEUR, NOM_JOUEUR, TELEPHONE_JOUEUR, ADRESSE_JOUEUR, EMAIL_JOUEUR, 
SEXE_JOUEUR,ID_CLUB) values ('31', 'Hirth', '474-551-9135','12 Green Ridge texas', 'Hirth@wely.com', 'Male','EA478414');

insert into JOUEUR (CIN_JOUEUR, NOM_JOUEUR, TELEPHONE_JOUEUR, ADRESSE_JOUEUR, EMAIL_JOUEUR, 
SEXE_JOUEUR,ID_CLUB) values ('94', 'Cronin', '513-555-9703','85 International trail', 'Cronin@wely.com', 'Male','ESA025428');

insert into JOUEUR (CIN_JOUEUR, NOM_JOUEUR, TELEPHONE_JOUEUR, ADRESSE_JOUEUR, EMAIL_JOUEUR,
 SEXE_JOUEUR,ID_CLUB) values ('11', 'De Wolfe', '716-682-8034','17 ine skora ', 'DeWolfe@wely.com', 'Female','NNA156502');

insert into JOUEUR (CIN_JOUEUR, NOM_JOUEUR, TELEPHONE_JOUEUR, ADRESSE_JOUEUR, EMAIL_JOUEUR, 
SEXE_JOUEUR,ID_CLUB) values ('51', 'Balden', '736-837-0560','990 Forster Way', 'Balden@wely.com', 'Male','SS453633');

insert into JOUEUR (CIN_JOUEUR, NOM_JOUEUR, TELEPHONE_JOUEUR, ADRESSE_JOUEUR, EMAIL_JOUEUR, 
SEXE_JOUEUR,ID_CLUB) values ('92', 'Exter', '899-156-4018','62 Holmberg Court', 'Exter@wely.com', 'Female','EN182425');

insert into JOUEUR (CIN_JOUEUR, NOM_JOUEUR, TELEPHONE_JOUEUR, ADRESSE_JOUEUR, EMAIL_JOUEUR, 
SEXE_JOUEUR,ID_CLUB) values ('45', 'Salah', '607-857-8015','tamansourt rd 21', 'Salah@wely.com', 'Male','SS453633');

insert into JOUEUR (CIN_JOUEUR, NOM_JOUEUR, TELEPHONE_JOUEUR, ADRESSE_JOUEUR, EMAIL_JOUEUR, 
SEXE_JOUEUR,ID_CLUB) values ('46', 'Mooring', '333-470-2575','24 bab ghmat ', 'Mooring@wely.com', 'Female','EA478414');

insert into JOUEUR (CIN_JOUEUR, NOM_JOUEUR, TELEPHONE_JOUEUR, ADRESSE_JOUEUR, EMAIL_JOUEUR, 
SEXE_JOUEUR,ID_CLUB) values ('82', 'Hearn', '832-850-1124','5 masira 3', 'Hearn@wely.com', 'Male','VA152242');

***********************************************************************************************************************************************************************************************************************************

5)==> LA TABLE ENTRAINEUR

/* la création */

CREATE TABLE ENTRAINEUR (
	CIN_ENTRAINEUR varchar2(20),
	NUMERO_ENTRAINEUR number(2) NOT NULL,
	NOM_ENTRAINEUR VARCHAR(50) NOT NULL,
	SALAIRE_ENTRAINEUR number(8),
	THELEPHONE_ENTRAINEUR VARCHAR(20),
 	LICENSE_ENTRAINEUR number(6),
                ID_EQUIPE VARCHAR2(20),
	BUTCARRIERE_ENTRAINEUR number(2),
         CONSTRAINT cin_ent_pk PRIMARY KEY (CIN_ENTRAINEUR))
         FOREIGN KEY(id_club) REFERENCES club(id_club)
);


/* l'insertion */

insert into ENTRAINEUR (CIN_ENTRAINEUR, NUMERO_ENTRAINEUR, NOM_ENTRAINEUR, SALAIRE_ENTRAINEUR, THELEPHONE_ENTRAINEUR, 
LICENSE_ENTRAINEUR,BUTCARRIERE_ENTRAINEUR,ID_EQUIPE) values ('N123', 1, 'Willan', 2221, '138-703-9912', 87, 1,'120');


insert into ENTRAINEUR (CIN_ENTRAINEUR, NUMERO_ENTRAINEUR, NOM_ENTRAINEUR, SALAIRE_ENTRAINEUR, THELEPHONE_ENTRAINEUR, 
LICENSE_ENTRAINEUR, BUTCARRIERE_ENTRAINEUR,ID_EQUIPE) values ('N124', 6, 'Livesley',3880, '935-531-2614', 44, 1,'121');


insert into ENTRAINEUR (CIN_ENTRAINEUR, NUMERO_ENTRAINEUR, NOM_ENTRAINEUR, SALAIRE_ENTRAINEUR, THELEPHONE_ENTRAINEUR, 
LICENSE_ENTRAINEUR, BUTCARRIERE_ENTRAINEUR,ID_EQUIPE) values ('N125', 2, 'Lawrinson', 6025, '670-143-1327', 21, 2,'120');


insert into ENTRAINEUR (CIN_ENTRAINEUR, NUMERO_ENTRAINEUR, NOM_ENTRAINEUR, SALAIRE_ENTRAINEUR, THELEPHONE_ENTRAINEUR,
 LICENSE_ENTRAINEUR, BUTCARRIERE_ENTRAINEUR,ID_EQUIPE) values ('N126', 12, 'Dudmarsh', 8029, '284-184-5315', 52, 5,'150');


insert into ENTRAINEUR (CIN_ENTRAINEUR, NUMERO_ENTRAINEUR, NOM_ENTRAINEUR, SALAIRE_ENTRAINEUR, THELEPHONE_ENTRAINEUR, 
LICENSE_ENTRAINEUR, BUTCARRIERE_ENTRAINEUR,ID_EQUIPE) values ('N127', 22, 'Ethersey', 7081, '376-956-0030', 52, 3,'100');


insert into ENTRAINEUR (CIN_ENTRAINEUR, NUMERO_ENTRAINEUR, NOM_ENTRAINEUR, SALAIRE_ENTRAINEUR, THELEPHONE_ENTRAINEUR, 
LICENSE_ENTRAINEUR, BUTCARRIERE_ENTRAINEUR,ID_EQUIPE) values ('N128', 26, 'Start', 8555, '384-941-5574', 85, 3,'150');


insert into ENTRAINEUR (CIN_ENTRAINEUR, NUMERO_ENTRAINEUR, NOM_ENTRAINEUR, SALAIRE_ENTRAINEUR, THELEPHONE_ENTRAINEUR, 
LICENSE_ENTRAINEUR,ID_EQUIPE) values ('N129', 20, 'Kingcott', 3999, '279-704-7984', 39,'150');


insert into ENTRAINEUR (CIN_ENTRAINEUR, NUMERO_ENTRAINEUR, NOM_ENTRAINEUR, SALAIRE_ENTRAINEUR, THELEPHONE_ENTRAINEUR, 
LICENSE_ENTRAINEUR, BUTCARRIERE_ENTRAINEUR,ID_EQUIPE) values ('N130', 16, 'Hilley', 10100, '810-883-6709', 36, 3,'110');


insert into ENTRAINEUR (CIN_ENTRAINEUR, NUMERO_ENTRAINEUR, NOM_ENTRAINEUR, SALAIRE_ENTRAINEUR, THELEPHONE_ENTRAINEUR, 
LICENSE_ENTRAINEUR, BUTCARRIERE_ENTRAINEUR,ID_EQUIPE) values ('N131', 17, 'Cleland', 11039, '118-683-8463', 78, 4,'121');


insert into ENTRAINEUR (CIN_ENTRAINEUR, NUMERO_ENTRAINEUR, NOM_ENTRAINEUR, SALAIRE_ENTRAINEUR, THELEPHONE_ENTRAINEUR, 
LICENSE_ENTRAINEUR, BUTCARRIERE_ENTRAINEUR,ID_EQUIPE) values ('N132', 13, 'Somerbell', 7500, '149-339-1718', 44, 2,'100');


insert into ENTRAINEUR (CIN_ENTRAINEUR, NUMERO_ENTRAINEUR, NOM_ENTRAINEUR, SALAIRE_ENTRAINEUR, THELEPHONE_ENTRAINEUR, 
LICENSE_ENTRAINEUR, BUTCARRIERE_ENTRAINEUR,ID_EQUIPE) values ('N133', 25, 'Di Carlo', 9007, '640-607-2225', 44, 3,'113');


insert into ENTRAINEUR (CIN_ENTRAINEUR, NUMERO_ENTRAINEUR, NOM_ENTRAINEUR, SALAIRE_ENTRAINEUR, THELEPHONE_ENTRAINEUR, 
LICENSE_ENTRAINEUR, BUTCARRIERE_ENTRAINEUR,ID_EQUIPE) values ('N133', 18, 'McLanachan', 9000, '373-421-3341', 87, 2,'115');

