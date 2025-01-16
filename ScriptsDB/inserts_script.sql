insert into Category values (null,"U16-M");
insert into Category values (null,"U18-M");
insert into Category values (null,"U20-M");
insert into Category values (null,"U23-M");
insert into Category values (null,"SEN-M");

insert into Category values (null,"U16-F");
insert into Category values (null,"U18-F");
insert into Category values (null,"U20-F");
insert into Category values (null,"U23-F");
insert into Category values (null,"SEN-F");


###########################################################################################

insert into user values('1','Username','e7cf3ef4f17c3999a94f2c6f612e8a888e5b1026878e4e19398b23bd38ec221a','mail1@gmail.com','organizer',0,0,0);
insert into competition_organizer values('1');

insert into user values('2','ClubAdmin','e7cf3ef4f17c3999a94f2c6f612e8a888e5b1026878e4e19398b23bd38ec221a','mail2@gmail.com','club_admin',0,0,0);
insert into club_admin values('2');

insert into user values('3','Organizer','e7cf3ef4f17c3999a94f2c6f612e8a888e5b1026878e4e19398b23bd38ec221a','mail3@gmail.com','organizer',0,0,0);
insert into competition_organizer values('3');

insert into user values('4','Org','e7cf3ef4f17c3999a94f2c6f612e8a888e5b1026878e4e19398b23bd38ec221a','mail4@gmail.com','organizer',0,0,0);
insert into competition_organizer values('4');

insert into user values('5','bladmin','e7cf3ef4f17c3999a94f2c6f612e8a888e5b1026878e4e19398b23bd38ec221a','mail5@gmail.com','club_admin',0,0,0);
insert into club_admin values('5');

insert into user values('6','Admin','e7cf3ef4f17c3999a94f2c6f612e8a888e5b1026878e4e19398b23bd38ec221a','mail1@gmail.com','admin',0,0,0);


insert into club values(null,'AK "Borac"',0, 'BOB','065 555 333','2');
insert into club values(null,'AK "Banja Luka"',0, 'BLB','065 555 222','5');

insert into location values('78000','Banja Luka','Vladike Platona BB');
insert into location values('76300','Bijeljina','Pavlovića put BB');
insert into location values('71000','Sarajevo','Patriotske lige BB');
insert into location values('71350','Sokolac','Milana Šarca BB');


insert into competition values (null,'Prvenstvo BiH SEN','1','78000','Za vise informacija obratiti se organizatoru!','2025-07-12 14:30:00');
insert into competition values (null,'Prvenstvo RS U23','1','78000','Za vise informacija obratiti se organizatoru!','2024-05-12 12:30:00');


insert into competition values (null,'Prvenstvo BiH U20','4','71000','Za vise informacija obratiti se organizatoru!','2025-07-15 11:00:00');
insert into competition values (null,'Prvenstvo BiH U18','4','71000','Za vise informacija obratiti se organizatoru!','2024-05-10 11:30:00');



#sen takmicenje

insert into event values(null,'1','2025-07-12 14:30:00',5,"shot put");
insert into throwing_event values('1');
insert into event values(null,'1','2025-07-12 15:30:00',10,"shot put");
insert into throwing_event values('2');


insert into event values(null,'1','2025-07-12 15:00:00',5,"long jump");
insert into jumping_event values('3');
insert into event values(null,'1','2025-07-12 17:00:00',10,'long jump');
insert into jumping_event values('4');


insert into event values(null,'1','2025-07-12 15:20:00',5,'100m');
insert into running_event values('5',0);
insert into event values(null,'1','2025-07-12 17:20:00',10,'100m');
insert into running_event values('6',0);


#U23 takmicenje


insert into event values(null,'2','2024-05-12 14:30:00',4,'shot put');
insert into throwing_event values('7');
insert into event values(null,'2','2024-05-12 15:30:00',9,'shot put');
insert into throwing_event values('8');


insert into event values(null,'2','2024-05-12 15:00:00',4,'long jump');
insert into jumping_event values('9');
insert into event values(null,'2','2024-05-12 17:00:00',9,'long jump');
insert into jumping_event values('10');


insert into event values(null,'2','2024-05-12 15:20:00',4,'100m');
insert into running_event values('11',0);
insert into event values(null,'2','2024-05-12 17:20:00',9,'100m');
insert into running_event values('12',0);

#drugi organizator
#u20

insert into event values(null,'3','2025-07-15 14:30:00',3,'shot put');
insert into throwing_event values('13');
insert into event values(null,'3','2025-07-15 15:30:00',8,'shot put');
insert into throwing_event values('14');


insert into event values(null,'3','2025-07-15 15:00:00',3,'long jump');
insert into jumping_event values('15');
insert into event values(null,'3','2025-07-15 17:00:00',8,'long jump');
insert into jumping_event values('16');


insert into event values(null,'3','2025-07-15 15:20:00',3,'100m');
insert into running_event values('17',0);
insert into event values(null,'3','2025-07-15 17:20:00',8,'100m');
insert into running_event values('18',0);


#u18


insert into event values(null,'4','2024-05-10 14:30:00',2,'shot put');
insert into throwing_event values('19');
insert into event values(null,'4','2024-05-10 15:30:00',7,'shot put');
insert into throwing_event values('20');


insert into event values(null,'4','2024-05-10 15:00:00',2,'long jump');
insert into jumping_event values('21');
insert into event values(null,'4','2024-05-10 17:00:00',7,'long jump');
insert into jumping_event values('22');


insert into event values(null,'4','2024-05-10 15:20:00',2,'100m');
insert into running_event values('23',0);
insert into event values(null,'4','2024-05-10 17:20:00',7,'100m');
insert into running_event values('24',0);

#grupe

insert into trackspace.group values(null,1,5);
insert into trackspace.group values(null,2,5);

#takmicari

insert into competitor values(null,'Dejan','Ćejić','1','2002-07-08','M',4,null);
insert into competitor values(null,'Milana','Milić','1','2002-05-03','F','9',null);
insert into competitor values(null,'Nikola','Nikolić','1','2000-07-08','M',5,1);
insert into competitor values(null,'Dušanka','Ducić','1','2000-05-15','F',10,null);
insert into competitor values(null,'Petar','Cetić','1','2005-06-02','M',3,null);
insert into competitor values(null,'Milica','Milić','1','2005-05-10','F',8,null);
insert into competitor values(null,'Mitar','Kajtez','1','2007-07-08','M',2,null);
insert into competitor values(null,'Dejana','Rogić','1','2007-05-15','F',7,null);
insert into competitor values(null,'Dejan','Kalinić','1','2009-07-08','M',1,null);
insert into competitor values(null,'Lara','Micić','1','2009-05-08','F',6,null);


insert into competitor values(null,'Dejan','Dejanović','2','2002-07-08','M',4,null);
insert into competitor values(null,'Milanka','Mitrović','2','2002-05-03','F',9,null);
insert into competitor values(null,'Vlado','Nikolić','2','2000-07-08','M',5,2);
insert into competitor values(null,'Duška','Tunić','2','2000-05-15','F',10,null);
insert into competitor values(null,'Petar','Pijetlović','2','2005-06-02','M',3,null);
insert into competitor values(null,'Milica','Mikić','2','2005-05-10','F',8,null);
insert into competitor values(null,'Nikola','Radić','2','2007-07-08','M',2,null);
insert into competitor values(null,'Dejana','Delić','2','2007-05-15','F',7,null);



#prijave na takmicenje

insert into competitor_event values('3','3',null);
insert into competitor_entry values(null,'2','1','3',now(),3);

insert into competitor_event values('4','2',null);
insert into competitor_entry values(null,'2','1','4',now(),2);

insert into competitor_event values('1','7','17.23m');
insert into competitor_entry values(null,'2','2','1',now(),7);
insert into competitor_event values('11','7','5.58m');
insert into competitor_entry values(null,'5','2','11',now(),7);

insert into competitor_event values('3','5',null);
insert into competitor_event values('13','5',null);
insert into competitor_entry values(null,'5','1','13',now(),5);
insert into competitor_entry values(null,'2','1','3',now(),3);






