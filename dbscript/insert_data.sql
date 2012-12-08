delete from users;
insert into users values('jz570129@sju.edu', 'password','Jing', 'Zhao', 'customer');
insert into users values('fboydc@gmail.com','password','Felipe','Boyd', 'customer');
insert into users values('bforoura@sju.edu','password','Babak','Forouraghi', 'customer');
insert into users values('lorodriguez@crash-garage.com', 'password', 'Lorenzo', 'Rodriguez', 'customer');
insert into users values('ryanderson@crash-garage.com', 'password', 'Ryan', 'Anderson', 'customer');
insert into users values('anparker@crash-garage.com', 'password', 'Anna', 'Parker', 'customer');
insert into users values('roibanez@crash-garage.com', 'password', 'Roger', 'Ibanez', 'customer');
insert into users values('alribieri@crash-garage.com', 'password', 'Alexandra', 'Ribieri', 'customer');

insert into users values('guojun.blue@gmail.com','password','Guojun','Zhang','employee');
insert into users values('chenxiang.zhu@gmail.com','password','Chenxiang','Zhu','employee');
insert into users values('john.doe@yahoo.net','password','John','Doe', 'employee');
insert into users values('robert-drysdale@gmail.com','password','Robert','Drysdale','employee');
insert into users values('Kevin.Boyle@sju.edu','password','Kevin','Boyle','employee');
insert into users values('bsmith@bradleyfosterlake.com','password','Bradley','Smith', 'employee');
insert into users values('rylagrota@gmail.com','password','Ryan','Lagrota', 'employee');
insert into users values('kwalsh@yahoo.net','password','Kelly','Walsh', 'employee');
insert into users values('laurenRichards@hotmail.com','password','Lauren','Richards','employee');
insert into users values('bradjohnson@gmail.com', 'password', 'Brad', 'Johnson', 'employee');
insert into users values('amburns@hotmail.com', 'password', 'Amanda', 'Burns', 'employee');


delete from address;
insert into address values(1, '2238 Lakeland Terrace', 'Southfield, MI 48075', 'Michigan','U.S.A', '734-364-8665');
insert into address values(2, '3865 Woodstock Drive', 'Pomona, CA 917665', 'California','U.S.A', '626-461-8998');
insert into address values(3, '1426 Goosetown Drive', 'Hendersonville, NC 28792', 'North Carolina','U.S.A', '828-698-9279');
insert into address values(4, '4081 Olen Thomas Drive', 'Frisco, TX 75034', 'Texas','U.S.A', '940-698-1369');
insert into address values(5, '1138 Metz Lane', 'Boston, MA 02110', 'Boston','U.S.A', '857-403-9207');
insert into address values(6, '931 Stanton Hollow Road', 'Boston, MA 02210', 'Massachusetts','U.S.A', '781-512-3543');
insert into address values(7, '2551 Willow Greene Drive', 'Montgomery, AL 36117', 'Alabama','U.S.A', '334-300-3638');
insert into address values(8, '3457 Frum Street', 'Nashville, TN 37211', 'Tennessee','U.S.A', '615-331-8692');
insert into address values(9, '2681 Rockford Road', 'Worcester, MA 01608', 'Massachusetts','U.S.A', '615-331-8692');
insert into address values(10, '4578 Charter Street', 'Mission, KS 66202', 'Kansas','U.S.A', '913-832-1870');
insert into address values(11, '749 Hayhurst Lane', 'Troy, MI 48083', 'Michigan','U.S.A', '248-733-9316');
insert into address values(12, '129 Edington Drive', 'Marietta, GA 30067', 'Georgia','U.S.A', '678-742-8795');
insert into address values(13, '601 Evergreen Lane', 'Los Angeles, CA 90017', 'California','U.S.A', '323-624-8902');
insert into address values(14, '1673 Medical Center Drive', 'Tampa, FL 33614', 'Florida','U.S.A', '941-479-2356');
insert into address values(15, '489 Monroe Avenue', 'Polk City, FL 33868', 'Florida','U.S.A', '941-704-5353');
insert into address values(16, '4000 Presidential Boulevard', 'Philadelphia, PA 19131', 'Pennsylvania','U.S.A', '215-853-8817');
insert into address values(17, '4040 Presidential Boulevard', 'Philadelphia, PA 19131', 'Pennsylvania', 'U.S.A', '215-321-8941');
insert into address values(18, '3345 Patterson Street', 'Houston, TX 77002', 'Texas', 'U.S.A', '713-321-8941');
insert into address values(19, '4521 Springfield AVE', '', 'PHILADELPHIA', 'PA', '(215) 222-5703');

delete from user_address;
insert into user_address values('jz570129@sju.edu', 1);
insert into user_address values('fboydc@gmail.com', 16);
insert into user_address values('bforoura@sju.edu', 3);
insert into user_address values('lorodriguez@crash-garage.com', 2);
insert into user_address values('ryanderson@crash-garage.com', 4);
insert into user_address values('anparker@crash-garage.com', 5);
insert into user_address values('roibanez@crash-garage.com', 6);
insert into user_address values('alribieri@crash-garage.com', 7);

delete from cars;
insert into cars values('HYB-7982','Acura','TL','images/2010_acura_tl_sedan.jpg','23761896401648163','sedan',TO_DATE('2010','YYYY'));
insert into cars values('BUV-9829','Audi','Q7','images/2009_audi_q7.jpg','23761896401648163','SUV',TO_DATE('2009','YYYY'));
insert into cars values('TCH-0852','BMW','m5','images/2006_bmw_m5_sedan.jpg','23761896401648163','sedan',TO_DATE('2006','YYYY'));
insert into cars values('UBM-6686','Ford','focus','images/2002_ford_focus_sedan.jpg','23761896401648163','sedan',TO_DATE('2002','YYYY'));
insert into cars values('IFC-8860','Lexus','ES','images/2003_lexus_es-300_sedan.jpg','23761896401648163','sedan',TO_DATE('2003','YYYY'));
insert into cars values('XYB-8458','Toyota','rav4','images/2001_toyota_rav4.jpg','23761896401648163','sedan',TO_DATE('2001','YYYY'));
insert into cars values('XUY-8888','Lexus','ES','images/2003_lexus_es-300_sedan.jpg','1B7GL26Z11S028340','sedan',TO_DATE('2003','YYYY'));
insert into cars values('PZZ-4463','Toyota','rav4','images/2001_toyota_rav4.jpg','2G1WF55EX49281626','sedan',TO_DATE('2001','YYYY'));
insert into cars values('STB-8458','Lamborghini','Gallardo Spyder', 'images/2007_lamborghini_gallardoS.jpg','1FMFU17L04L379227','convertible',TO_DATE('2006', 'YYYY'));
insert into cars values('RAD-9164','Mercedez', 'CLS550', 'images/2008_mercedez_cls550.jpg','1G1AP12P157977266','sedan',TO_DATE('2008', 'YYYY'));
insert into cars values('RAN-3352', 'Saab', '9-3', 'images/2006_saab_9-3.jpg', '1FTSW20556E263298', 'convertible', TO_DATE('2006', 'YYYY'));
insert into cars values('RXA-2237', 'BMW', 'X5', 'images/2010_bmw_x5.jpg', '2T1KR32E27C885522','SUV', TO_DATE('2010', 'YYYY'));
insert into cars values('AAS-8809', 'Honda', 'civic-EX', 'images/2007_honda_civic.jpg','1GKFG15M811784919','coupe', TO_DATE('2007', 'YYYY'));
insert into cars values('RBU-7726', 'Ford', 'Explorer XLT', 'images/2010_ford_explorer.jpg','1GKEK13V95J412467','SUV', TO_DATE('2010', 'YYYY'));
insert into cars values('RTA-9939', 'Subaru','Legacy L', 'images/2004_subaru_legacy.jpg', 'KNAGD128145847756', 'sedan', TO_DATE('2004', 'YYYY'));
insert into cars values('RBK-7793','Mercury', 'Mariner Premier', 'images/2011_mercury_mariner.jpg', 'SAJWA01T25F031157', 'SUV', TO_DATE('2011', 'YYYY'));
insert into cars values('NNR-4545', 'Scion', 'tc', 'images/2012_scion_tc.jpg', '5GZDV23L95D239355', 'coupe', TO_DATE('2012', 'YYYY'));
insert into cars values('IDD-9971','Volkswagen','Passat','images/2008_volkswagen_passat.jpg','1GGCS199178873281','wagon',TO_DATE('2008','YYYY'));
insert into cars values('RBU-6622', 'Chrysler','Town Country Touring', 'images/2007_chrysler_minivan.jpg', '1G2AJ15F477289040', 'minivan', TO_DATE('2007','YYYY'));
insert into cars values('GHG-5269', 'Infiniti', 'FX35', 'images/2004_infiniti_fx35.jpg', 'JTEBU14R770579229', 'SUV', TO_DATE('2004', 'YYYY'));

delete from user_car;
insert into user_car values('jz570129@sju.edu','TCH-0852');
insert into user_car values('jz570129@sju.edu','RBU-6622');
insert into user_car values('jz570129@sju.edu','GHG-5269');
insert into user_car values('fboydc@gmail.com','IFC-8860');
insert into user_car values('fboydc@gmail.com','HYB-7982');
insert into user_car values('fboydc@gmail.com','BUV-9829');
insert into user_car values('fboydc@gmail.com','RAN-3352');
insert into user_car values('bforoura@sju.edu','STB-8458');
insert into user_car values('bforoura@sju.edu','RXA-2237');
insert into user_car values('lorodriguez@crash-garage.com','UBM-6686');
insert into user_car values('lorodriguez@crash-garage.com','AAS-8809');
insert into user_car values('ryanderson@crash-garage.com','XYB-8458');
insert into user_car values('ryanderson@crash-garage.com','RTA-9939');
insert into user_car values('anparker@crash-garage.com','XUY-8888');
insert into user_car values('anparker@crash-garage.com','RBK-7793');
insert into user_car values('roibanez@crash-garage.com','PZZ-4463');
insert into user_car values('roibanez@crash-garage.com','NNR-4545');
insert into user_car values('alribieri@crash-garage.com','IDD-9971');
insert into user_car values('alribieri@crash-garage.com','RAD-9164');



delete from category;
insert into category values(1, 'brake', 'chenxiang.zhu@gmail.com');
insert into category values(2, 'body', 'chenxiang.zhu@gmail.com');
insert into category values(3, 'engine', 'chenxiang.zhu@gmail.com');
insert into category values(4, 'transmission', 'chenxiang.zhu@gmail.com');
insert into category values(5, 'window', 'chenxiang.zhu@gmail.com');
insert into category values(6, 'tire', 'chenxiang.zhu@gmail.com');
insert into category values(7, 'panel', 'guojun.blue@gmail.com');
insert into category values(8, 'battery electrical', 'guojun.blue@gmail.com');
insert into category values(9, 'exhaust muffler', 'guojun.blue@gmail.com');
insert into category values(10, 'Fluids, Heat Air Conditioning', 'guojun.blue@gmail.com');

delete from repair_jobs;

insert into repair_jobs values(1, 'new','Oil Change', 'Engine oil change', 3, null, null, 1);
insert into repair_jobs values(2, 'new','Blemish', 'minor blemish', 7,null, null, 3);
insert into repair_jobs values(3, 'new', 'rotors and pads','damaged rotors and pads', 1, null, null, 0);
insert into repair_jobs values(4, 'new', 'A/C', 'exhaust fumes cross with A/C', 9, null, null, 0);
insert into repair_jobs values(5, 'new', 'Heater','heater damage',10 , null, null, 5);
insert into repair_jobs values(6, 'new', 'Ball joints', 'damaged ball joints', 5, null, null, 0);
insert into repair_jobs values(7, 'new', 'Left shock absorber', 'damaged front left shock absorber', 5, null, null, 5);
insert into repair_jobs values(8, 'processing', 'catalyc converter', 'damaged catalyc converter', 8, TO_DATE('06/12/12','DD/MM/YYYY'), null, 12);
insert into repair_jobs values(9, 'processing', 'Head gaskets', 'cylinder head, valves and head gaskets damage', 3, TO_DATE('10/12/12','DD/MM/YYYY'), null , 10);
insert into repair_jobs values(10, 'processing', 'belts', 'replace drive belts', 3, TO_DATE('9/12/12','DD/MM/YYYY'), null, 4);
insert into repair_jobs values(11, 'processing', 'differential', 'damaged differential', 6, TO_DATE('07/12/12','DD/MM/YYYY'), null, 4);
insert into repair_jobs values(12, 'processing', 'cylinder head', 'damaged cylinder head',3, TO_DATE('10/12/12','DD/MM/YYYY'), null, 6);
insert into repair_jobs values(13, 'completed', 'back bumper', 'minor back bumper damage', 2, TO_DATE('01/12/12','DD/MM/YYYY'), TO_DATE('07/12/12', 'DD/MM/YYYY'), 7);
insert into repair_jobs values(14, 'completed', 'Fuel injection', 'Fuel injection problem', 3, TO_DATE('30/11/12','DD/MM/YYYY'), TO_DATE('11/12/12', 'DD/MM/YYYY'), 11);
insert into repair_jobs values(15, 'completed', 'front bumper', 'front bumper bump', 7, TO_DATE('03/12/12','DD/MM/YYYY'), TO_DATE('07/12/12', 'DD/MM/YYYY'), 4);
insert into repair_jobs values(16, 'completed', 'flywheel', 'damaged flywheel', 4, TO_DATE('06/12/12','DD/MM/YYYY'), TO_DATE('10/12/12', 'DD/MM/YYYY'), 4);
insert into repair_jobs values(17, 'completed', 'differential', 'damaged differential', 6, TO_DATE('07/12/12','DD/MM/YYYY'), TO_DATE('11/12/12', 'DD/MM/YYYY'), 4);
insert into repair_jobs values(18, 'completed', 'cylinder head', 'damaged cylinder head', 3, TO_DATE('01/12/12','DD/MM/YYYY'), TO_DATE('11/12/12', 'DD/MM/YYYY'), 6);


delete from requests;

insert into requests values(2,'jz570129@sju.edu','TCH-0852',null);
insert into requests values(17,'jz570129@sju.edu','RBU-6622','chenxiang.zhu@gmail.com');
insert into requests values(9,'jz570129@sju.edu','GHG-5269','alribieri@crash-garage.com');
insert into requests values(1, 'fboydc@gmail.com','IFC-8860', null);
insert into requests values(13, 'fboydc@gmail.com','HYB-7982', 'alribieri@crash-garage.com');
insert into requests values(10, 'fboydc@gmail.com','IFC-8860', 'robert-drysdale@gmail.com');
insert into requests values(12,'fboydc@gmail.com','HYB-7982','guojun.blue@gmail.com');
insert into requests values(16,'fboydc@gmail.com','BUV-9829','amburns@hotmail.com');
insert into requests values(6,'fboydc@gmail.com','RAN-3352', 'alribieri@crash-garage.com');
insert into requests values(11, 'bforoura@sju.edu','STB-8458', 'chenxiang.zhu@gmail.com');
insert into requests values(3,'bforoura@sju.edu','RXA-2237',null);
insert into requests values(4,'lorodriguez@crash-garage.com','UBM-6686',null);
insert into requests values(5,'lorodriguez@crash-garage.com','AAS-8809','john.doe@yahoo.net');
insert into requests values(8,'ryanderson@crash-garage.com','XYB-8458',null);
insert into requests values(7,'ryanderson@crash-garage.com','RTA-9939', null);
insert into requests values(14,'anparker@crash-garage.com','XUY-8888',null);
insert into requests values(18,'anparker@crash-garage.com','RBK-7793','robert-drysdale@gmail.com');
insert into requests values(15,'roibanez@crash-garage.com','PZZ-4463','Kevin.Boyle@sju.edu');


delete from cost_details;
insert into cost_details values('Front bumpter', 'Bumper cover w/o lamp wash', 60, 3, 13);
insert into cost_details values('Front bumper', 'Add for Clear Coat', 60, 2.8, 13);
insert into cost_details values('Front bumper', 'O/H bumper assy', 60, 2.8, 13);
insert into cost_details values('Front lamps', 'RT RI headlamp assy', 60, 0.5,13);
insert into cost_details values('Front lamps', 'RT Side marker lamp', 60, 0.2, 13);
insert into cost_details values('Front lamps', 'Aim headlamps', 60, 0.5, 13);
insert into cost_details values('Fender', 'RT Fender liner front', 50, 0.5, 13);
insert into cost_details values('Fender', 'RT Wheel flare w/o M package', 115, 0.6, 13);
insert into cost_details values('Fender', 'TINT FOR COLOR MATCH', 50, 0.5, 13);
insert into cost_details values('Fender', 'HAZARDOUS WASTE REMOVAL', 80, 0.6, 13);
insert into cost_details values('Fender', 'NIB SAND POLISH', 70, 1.5, 13);
insert into cost_details values('Fender', 'FLEX ADDITIVE', 80, 0.6, 13);
insert into cost_details values('fuel injector','replaced fuel injection system', 1000, 1, 16);
insert into cost_details values('fly wheel','replaced flywheel', 950.00, 1, 16);
insert into cost_details values('differential','replaced differential',820.00, 1, 16);
insert into cost_details values('cylinder head','replaced cylinder head',100.00, 1, 16);



delete from garages;
insert into garages values(1, 'WAYNE Crash Garage', 'Our goal of Wayne Crash Garage is to provide all of the information a customer needs to make an informed decision about their car repairs. Our goal is to teach -- never to sell -- and to make sure that you are comfortable and confident in your decisions.', 19);

commit;
