delete from users;
insert into users values('jz570129@sju.edu', 'password','Jing', 'Zhao', 'customer');
insert into users values('guojun.blue@gmail.com','password','Guojun','Zhang','customer');
insert into users values('chenxiang.zhu@gmail.com','password','Chenxiang','Zhu','worker');

delete from address;
insert into address values(1, '3903 CITY AVE', 'APT 518B', 'PHILADELPHIA', 'PA', '(215) 982-9873');
insert into address values(2, '3903 City Ave', 'APT 518B', 'PHILADELPHIA', 'PA', '(610) 352-7749');
insert into address values(3, '7300 WEST CHESTER PIKE', '', ', UPPER DARBY', 'PA', '(610) 352-6230');

delete from user_address;
insert into user_address values('guojun.blue@gmail.com', 1);
insert into user_address values('jz570129@sju.edu', 2);
insert into user_address values('chenxiang.zhu@gmail.com', 3);

delete from cars;
insert into cars values('HYB-798','Acura','TL','images/2010_acura_tl_sedan.jpg','23761896401648163','sedan',TO_DATE('2009','YYYY'));
insert into cars values('BUV-982','Audi','Q7','images/2009_audi_q7.jpg','23761896401648163','SUV',TO_DATE('2008','YYYY'));
insert into cars values('TCH-082','BMW','m5','images/2006_bmw_m5_sedan.jpg','23761896401648163','sedan',TO_DATE('2006','YYYY'));
insert into cars values('UBM-666','Ford','focus','images/2002_ford_focus_sedan.jpg','23761896401648163','sedan',TO_DATE('2002','YYYY'));
insert into cars values('IFC-888','Lexus','ES','images/2003_lexus_es-300_sedan.jpg','23761896401648163','sedan',TO_DATE('2003','YYYY'));
insert into cars values('XYB-845','Toyota','rav4','images/2001_toyota_rav4.jpg','23761896401648163','sedan',TO_DATE('2001','YYYY'));

delete from user_car;
insert into user_car values('guojun.blue@gmail.com','TCH-082');
insert into user_car values('guojun.blue@gmail.com','IFC-888');

delete from repair_jobs;
insert into repair_jobs values(1,'processing','temp','bad','body',TO_DATE('06/12/2012','DD/MM/YYYY'),null,12);
insert into repair_jobs values(2,'processing','temp2','bad2','brake',TO_DATE('12/11/2012','DD/MM/YYYY'),null,0);
insert into repair_jobs values(3,'new','temp2','bad2','engine',TO_DATE('12/07/2009','DD/MM/YYYY'),null,30);
insert into repair_jobs values(4,'new','temp2','bad2','transmission',TO_DATE('12/07/2009','DD/MM/YYYY'),null,30);
insert into repair_jobs values(5,'completed','temp2','bad2','collision',TO_DATE('12/07/2009','DD/MM/YYYY'),TO_DATE('18/07/2009','DD/MM/YYYY'),30);
insert into repair_jobs values(6,'completed','temp2','bad2','body',TO_DATE('12/07/2009','DD/MM/YYYY'),TO_DATE('20/07/2009','DD/MM/YYYY'),30);

delete from requests;
insert into requests values(1,'guojun.blue@gmail.com','IFC-888','jz570129@sju.edu');
insert into requests values(2,'guojun.blue@gmail.com','TCH-082',null);
insert into requests values(3,'guojun.blue@gmail.com','IFC-888',null);
insert into requests values(4,'guojun.blue@gmail.com','TCH-082',null);
insert into requests values(5,'guojun.blue@gmail.com','IFC-888','jz570129@sju.edu');
insert into requests values(6,'guojun.blue@gmail.com','TCH-082','chenxiang.zhu@gmail.com');

delete from cost_details;
insert into cost_details values('Front bumpter', 'Bumper cover w/o lamp wash', 60, 3, 6);
insert into cost_details values('Front bumper', 'Add for Clear Coat', 60, 2.8, 6);
insert into cost_details values('Front bumper', 'O/H bumper assy', 60, 2.8, 6);
insert into cost_details values('Front lamps', 'RT RI headlamp assy', 60, 0.5, 6);
insert into cost_details values('Front lamps', 'RT Side marker lamp', 60, 0.2, 6);
insert into cost_details values('Front lamps', 'Aim headlamps', 60, 0.5, 6);
insert into cost_details values('Fender', 'RT Fender liner front', 50, 0.5, 6);
insert into cost_details values('Fender', 'RT Wheel flare w/o M package', 115, 0.6, 6);
insert into cost_details values('Fender', 'TINT FOR COLOR MATCH', 50, 0.5, 6);
insert into cost_details values('Fender', 'HAZARDOUS WASTE REMOVAL', 80, 0.6, 6);
insert into cost_details values('Fender', 'NIB SAND POLISH', 70, 1.5, 6);
insert into cost_details values('Fender', 'FLEX ADDITIVE', 80, 0.6, 6);


