insert into users values('jz570129@sju.edu', 'password','Jing', 'Zhao');
insert into users values('guojun.blue@gmail.com','password','guojun','zhang');
insert into users values('fboydc@gmail.com','password','Felipe','Boyd');
insert into users values('bforoura@sju.edu','password','Babak','Forouraghi');
insert into users values('john.doe@yahoo.net','password','John','Doe');
insert into users values('robert-drysdale@gmail.com','password','Robert','Drysdale');
insert into users values('ggrevera@sju.edu','password','George','Grevera');
insert into users values('Kevin.Boyle@sju.edu','password','Kevin','Boyle');
insert into users values('bsmith@bradleyfosterlake.com','password','Bradley','Smith');
insert into users values('rylagrota@gmail.com','password','Ryan','Lagrota');
insert into users values('kwalsh@yahoo.net','password','Kelly','Walsh');
insert into users values('laurenRichards@hotmail.com','password','Lauren','Richards');
insert into users values('bradjohnson@gmail.com', 'password', 'Brad', 'Johnson');
insert into users values('amburns@hotmail.com', 'password', 'Amanda', 'Burns');
insert into users values('lorodriguez@crash-garage.com', 'password', 'Lorenzo', 'Rodriguez');
insert into users values('ryanderson@crash-garage.com', 'password', 'Ryan', 'Anderson');
insert into users values('anparker@crash-garage.com', 'password', 'Anna', 'Parker');
insert into users values('roibanez@crash-garage.com', 'password', 'Roger', 'Ibanez');
insert into users values('alribieri@crash-garage.com', 'password', 'Alexandra', 'Ribieri');

insert into cars values('HYB-798','Acura','TL','images/2010_acura_tl_sedan.jpg','23761896401648163','sedan',TO_DATE('12/03/2009','DD/MM/YYYY'));
insert into cars values('BUV-982','Audi','Q7','images/2009_audi_q7.jpg','YV1672MS4A2369277','suv',TO_DATE('01/03/2008','DD/MM/YYYY'));
insert into cars values('TCH-082','BMW','m5','images/2006_bmw_m5_sedan','2B4JB25Z3XK928750','sedan',TO_DATE('12/04/2006','DD/MM/YYYY'));
insert into cars values('UBM-666','Ford','focus','images/2002_ford_focus_sedan.jpg','4A4MN31S97E144074','sedan',TO_DATE('20/07/2002','DD/MM/YYYY'));
insert into cars values('IFC-888','Lexus','ES','images/2003_lexus_es-300_sedan.jpg','1B7GL26Z11S028340','sedan',TO_DATE('12/09/2003','DD/MM/YYYY'));
insert into cars values('PZZ-443','Toyota','rav4','images/2001_toyota_rav4.jpg','2G1WF55EX49281626','sedan',TO_DATE('12/10/2001','DD/MM/YYYY'));
insert into cars values('XYB-845','Lamborghini','Gallardo Spyder', 'images/2007_lamborghini_gallardoS.jpg','1FMFU17L04L379227','convertible',''TO_DATE('15/10/2006', 'DD/MM/YYYY'));
insert into cars values('RAD-9164','Mercedez', 'CLS550', 'images/2008_mercedez_cls550.jpg','1G1AP12P157977266','sedan',TO_DATE('05/09/2007', 'DD/MM/YYYY'));
insert into cars values('RAN-335', 'Saab', '9-3', 'images/2006_saab_9-3.jpg', '1FTSW20556E263298', 'convertible', TO_DATE('12/01/2005', 'DD/MM/YYYY'));
insert into cars values('RXA-223', 'BMW', 'X5', 'images/2010_bmw_x5.jpg', '2T1KR32E27C885522','suv', TO_DATE('23/09/2009', 'DD/MM/YYYY'));
insert into cars values('AAS-88', 'Honda', 'civic-EX', 'images/2007_honda_civic.jpg','1GKFG15M811784919','coupe', TO_DATE('12/12/2006', 'DD/MM/YYYY'));
insert into cars values('RBU-77223', 'Ford', 'Explorer XLT', 'images/2010_ford_explorer.jpg','1GKEK13V95J412467','suv' TO_DATE('01/10/2009', 'DD/MM/YYYY'));
insert into cars values('RTA-9939', 'Subaru','Legacy L', 'images/2004_subaru_legacy.jpg', 'KNAGD128145847756', 'sedan', TO_DATE('18/04/2004', 'DD/MM/YYYY'));
insert into cars values('RBK-7793','Mercury', 'Mariner Premier', 'images/2011_mercury_mariner.jpg', 'SAJWA01T25F031157', 'suv', TO_DATE('03/11/2011', 'DD/MM/YYYY'));
insert into cars values('NNR-4545', 'Scion', 'tc', 'images/2012_scion_tc.jpg', '5GZDV23L95D239355', 'coupe', TO_DATE('25/09/2011', 'DD/MM/YYYY'));
insert into cars values('IDD-997','Volkswagen','Passat','images/2008_volkswagen_passat.jpg','1GGCS199178873281','wagon',TO_DATE('15/08/2007','DD/MM/YYYY'));
insert into cars values('RBU-7722', 'Chrysler','Town & Country Touring', 'images/2007_chrysler_minivan.jpg', '1G2AJ15F477289040', 'minivan', TO_DATE('13/09/2006','DD/MM/YYYY'));
insert into cars values('GHG-5269', 'Infiniti', 'FX35', 'images/2004_infiniti_fx35.jpg', 'JTEBU14R770579229', 'suv', TO_DATE('31/01/2004', 'DD/MM/YYYY'));

insert into user_car values('guojun.blue@gmail.com','TCH-082'); 
insert into user_car values('guojun.blue@gmail.com','IFC-888');
insert into user_car values('fboydc@gmail.com','HYB-798');
insert into user_car values('fboydc@gmail.com','BUV-982');
insert into user_car values('fboydc@gmail.com','UBM-666');
insert into user_car values('bforoura@sju.edu','XYB-845');
insert into user_car values('bforoura@sju.edu','RAD-9164');
insert into user_car values('john.doe@yahoo.net','PZZ-443');
insert into user_car values('robert-drysdale@gmail.com','RAN-335');
insert into user_car values('jz570129@sju.edu','RXA-223');
insert into user_car values('ggrevera@sju.edu','AAS-88');
insert into user_car values('Kevin.Boyle@sju.edu','RBU-77223');
insert into user_car values('bsmith@bradleyfosterlake.com','RTA-9939');
insert into user_car values('rylagrota@gmail.com','RBK-7793');
insert into user_car values('kwalsh@yahoo.net','NNR-4545');
insert into user_car values('laurenRichards@hotmail.com','IDD-997');
insert into user_car values('bradjohnson@gmail.com','RBU-7722');
insert into user_car values('amburns@hotmail.com','GHG-5269');

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
insert into address value(17, '4040 Presidential Boulevard', 'Philadelphia, PA 19131', 'Pennsylvania', 'U.S.A', '215-321-8941');
insert into address value(18, '3345 Patterson Street', 'Houston, TX 77002', 'Texas', 'U.S.A', '713-321-8941');

insert into user_address values('z570129@sju.edu', 16);
insert into user_address values('guojun.blue@gmail.com', 16);
insert into user_address values('fboydc@gmail.com', 17);
insert into user_address values('bforoura@sju.edu', 1);
insert into user_address values('john.doe@yahoo.net', 2);
insert into user_address values('robert-drysdale@gmail.com', 3);
insert into user_address values('ggrevera@sju.edu', 4);
insert into user_address values('Kevin.Boyle@sju.edu', 5);
insert into user_address values('bsmith@bradleyfosterlake.com', 6);
insert into user_address values('rylagrota@gmail.com', 7);
insert into user_address values('kwalsh@yahoo.net', 8);
insert into user_address values('laurenRichards@hotmail.com', 9);
insert into user_address values('bradjohnson@gmail.com', 10);
insert into user_address values('amburns@hotmail.com', 11);
insert into user_address values('lorodriguez@crash-garage.com', 12);
insert into user_address values('ryanderson@crash-garage.com', 13);
insert into user_address values('anparker@crash-garage.com', 14);
insert into user_address values('roibanez@crash-garage.com', 15);
insert into user_address values('alribieri@crash-garage.com', 18);

insert into repair_jobs values(1, 'new','Oil Change', 'Engine oil change', 'Air Filters & Oil', TO_DATE('12/12/12','DD/MM/YYYY'), TO_DATE('15/12/12', 'DD/MM/YYYY'), 1);
insert into repair_jobs values(2, 'new','Blemish', 'minor blemish', 'Panel Beating', TO_DATE('12/12/12','DD/MM/YYYY'), TO_DATE('18/12/12', 'DD/MM/YYYY'), 3);
insert into repair_jobs values(3, 'processing', 'damaged catalyc converter', 'Battery & Electrical', TO_DATE('06/12/12','DD/MM/YYYY'), TO_DATE('15/12/12', 'DD/MM/YYYY'), 12);
insert into repair_jobs values(4, 'completed', 'minor back bumper damage', 'Panel Beating', TO_DATE('01/12/12','DD/MM/YYYY'), TO_DATE('07/12/12', 'DD/MM/YYYY'), 7);
insert into repair_jobs values(5, 'new', 'damaged rotors and pads', 'Breaks', TO_DATE('12/12/12','DD/MM/YYYY'), TO_DATE('15/12/12', 'DD/MM/YYYY'), 3);
insert into repair_jobs values(6, 'processing', 'cylinder head, valves and head gaskets damage', 'Engine', TO_DATE('10/12/12','DD/MM/YYYY'), TO_DATE('20/12/12', 'DD/MM/YYYY'), 10);
insert into repair_jobs values(7, 'processing', 'replace drive belts', 'Engine', TO_DATE('9/12/12','DD/MM/YYYY'), TO_DATE('13/12/12', 'DD/MM/YYYY'), 4);
insert into repair_jobs values(8, 'completed', 'Fuel injection problem', 'Engine', TO_DATE('30/11/12','DD/MM/YYYY'), TO_DATE('11/12/12', 'DD/MM/YYYY'), 11);
insert into repair_jobs values(9, 'new', 'exhaust fumes cross with A/C', 'Exhaust & Muffler', TO_DATE('12/12/12','DD/MM/YYYY'), TO_DATE('17/12/12', 'DD/MM/YYYY'), 5);
insert into repair_jobs values(10, 'new', 'heater damage', 'Fluids, Heat & Air Conditioning', TO_DATE('12/12/12','DD/MM/YYYY'), TO_DATE('17/12/12', 'DD/MM/YYYY'), 5);
insert into repair_jobs values(11, 'new', 'damaged ball joints', 'Steering & Suspension', TO_DATE('12/12/12','DD/MM/YYYY'), TO_DATE('21/12/12', 'DD/MM/YYYY'), 9);
insert into repair_jobs values(12, 'new', 'damaged front left shock absorber', 'Steering & Suspension', TO_DATE('12/12/12','DD/MM/YYYY'), TO_DATE('17/12/12', 'DD/MM/YYYY'), 5);
insert into repair_jobs values(13, 'completed', 'front bumper bump', 'Panel Beating', TO_DATE('03/12/12','DD/MM/YYYY'), TO_DATE('07/12/12', 'DD/MM/YYYY'), 4);
insert into repair_jobs values(14, 'completed', 'damaged flywheel', 'Transmission', TO_DATE('06/12/12','DD/MM/YYYY'), TO_DATE('10/12/12', 'DD/MM/YYYY'), 4);
insert into repair_jobs values(15, 'completed', 'damaged differential', 'Tires & Wheels', TO_DATE('07/12/12','DD/MM/YYYY'), TO_DATE('11/12/12', 'DD/MM/YYYY'), 4);
insert into repair_jobs values(16, 'processing', 'damaged differential', 'Tires & Wheels', TO_DATE('07/12/12','DD/MM/YYYY'), TO_DATE('11/12/12', 'DD/MM/YYYY'), 4);
insert into repair_jobs values(17, 'processing', 'damaged cylinder head', 'Engine', TO_DATE('10/12/12','DD/MM/YYYY'), TO_DATE('16/12/12', 'DD/MM/YYYY'), 6);
insert into repair_jobs values(18, 'completed', 'damaged cylinder head', 'Engine', TO_DATE('10/12/12','DD/MM/YYYY'), TO_DATE('16/12/12', 'DD/MM/YYYY'), 6);

insert into requests values(1, 'jz570129@sju.edu', 'RXA-223', 'lorodriguez@crash-garage.com');  --images/2010_bmw_x5.jpg
insert into requests values(2, 'guojun.blue@gmail.com', 'IFC-888', 'ryanderson@crash-garage.com');--images/2003_lexus_es-300_sedan.jpg
insert into requests values(3, 'guojun.blue@gmail.com', 'TCH-082', 'roibanez@crash-garage.com');--images/2006_bmw_m5_sedan.jpg
insert into requests values(4, 'fboydc@gmail.com', 'HYB-798', 'alribieri@crash-garage.com');--images/2010_acura_tl_sedan.jpg
insert into requests values(5, 'fboydc@gmail.com', 'BUV-982', 'alribieri@crash-garage.com');--images/2009_audi_q7.jpg
insert into requests values(6, 'fboydc@gmail.com', 'UBM-666', 'anparker@crash-garage.com');--images/2002_ford_focus_sedan.jpg
insert into requests values(7, 'bforoura@sju.edu', 'XYB-845', 'anparker@crash-garage.com');--images/2007_lamborghini_gallardoS.jpg
insert into requests values(8, 'bforoura@sju.edu', 'RAD-9164', 'alribieri@crash-garage.com');--images/2008_mercedez_cls550.jpg
insert into requests values(9, 'john.doe@yahoo.net', 'PZZ-443', 'alribieri@crash-garage.com');--images/2001_toyota_rav4.jpg
insert into requests values(10, 'robert-drysdale@gmail.com','RAN-335', 'lorodriguez@crash-garage.com');--images/images/2006_saab_9-3.jpg
insert into requests values(11, 'ggrevera@sju.edu','AAS-88', 'lorodriguez@crash-garage.com');--images/2007_honda_civic.jpg
insert into requests values(12, 'Kevin.Boyle@sju.edu','RBU-77223', 'ryanderson@crash-garage.com');--images/2010_ford_explorer.jpg
insert into requests values(13, 'bsmith@bradleyfosterlake.com','RTA-9939', 'lorodriguez@crash-garage.com');--images/2004_subaru_legacy.jpg
insert into requests values(14, 'rylagrota@gmail.com','RBK-7793', 'ryanderson@crash-garage.com');--images/2011_mercury_mariner.jpg
insert into requests values(15, 'kwalsh@yahoo.net','NNR-4545', 'alribieri@crash-garage.com');--images/2012_scion_tc.jpg
insert into requests values(16, 'laurenRichards@hotmail.com','IDD-997', 'roibanez@crash-garage.com');--images/2008_volkswagen_passat.jpg
insert into requests values(17, 'bradjohnson@gmail.com','RBU-7722', 'roibanez@crash-garage.com');--images/2007_chrysler_minivan.jpg
insert into requests values(18, 'amburns@hotmail.com','GHG-5269', 'roibanez@crash-garage.com');--images/2004_infiniti_fx35.jpg

insert into images values(1, 'images/2010_bmw_x5.jpg',1);
insert into images values(2, 'images/2003_lexus_es-300_sedan.jpg',2);
insert into images values(3, 'images/2006_bmw_m5_sedan.jpg',3);
insert into images values(4, 'images/2010_acura_tl_sedan.jpg',4);
insert into images values(5, 'images/2009_audi_q7.jpg',5);
insert into images values(6, 'images/2002_ford_focus_sedan.jpg',6);
insert into images values(7, 'images/2007_lamborghini_gallardoS.jpg',7);
insert into images values(8, 'images/2008_mercedez_cls550.jpg',8);
insert into images values(9, 'images/2001_toyota_rav4.jpg',9);
insert into images values(10, 'images/images/2006_saab_9-3.jpg',10);
insert into images values(11, 'images/2007_honda_civic.jpg',11);
insert into images values(12, 'images/2010_ford_explorer.jpg',12);
insert into images values(13, 'images/2004_subaru_legacy.jpg',13);
insert into images values(14, 'images/2011_mercury_mariner.jpg',14);
insert into images values(15, 'images/2012_scion_tc.jpg',15);
insert into images values(16, 'images/2008_volkswagen_passat.jpg',16);
insert into images values(17, 'images/2007_chrysler_minivan.jpg',17);
insert into images values(18, 'images/2004_infiniti_fx35.jpg',18);

insert into cost_details values('back bumper','repainting', 250.00, 1, 4);
insert into cost_details values('back bumper','removed dent', 70.00, 1, 4);
insert into cost_details values('fuel injector','replaced fuel injection system', 3000, 1, 8);
insert into cost_details values('front bumper','repainting', 350.00, 1, 13);
insert into cost_details values('front bumper','removed dent', 120.00, 1, 13);
insert into cost_details values('fly wheel','replaced flywheel', 950.00, 1, 14);
insert into cost_details values('differential','replaced differential',820.00, 1, 15);
insert into cost_details values('cylinder head','replaced cylinder head',2100.00, 1, 18);







