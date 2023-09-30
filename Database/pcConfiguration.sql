drop schema if exists `pcConfiguration`;
create schema `pcConfiguration`;
use `pcConfiguration`;


create table `pcConfiguration`.`cpuType`(
`CpuTypeId` int not null AUTO_INCREMENT primary key,
`description` VARCHAR (50) not null
);
INSERT INTO `pcConfiguration`.`cpuType` (`CpuTypeId`, `description`) VALUES ('1', 'Intel');
INSERT INTO `pcConfiguration`.`cpuType` (`CpuTypeId`, `description`) VALUES ('2', 'Ryzen');

create table `pcConfiguration`.`socketType`(
`socketTypeId` int not null AUTO_INCREMENT primary key,
`description` VARCHAR (50) not null
);

INSERT INTO `pcConfiguration`.`socketType` (`socketTypeId`, `description`) VALUES ('1', 'Intel R 1200');
INSERT INTO `pcConfiguration`.`socketType` (`socketTypeId`, `description`) VALUES ('2', 'Intel R 1700');
INSERT INTO `pcConfiguration`.`socketType` (`socketTypeId`, `description`) VALUES ('3', 'AM4');
INSERT INTO `pcConfiguration`.`socketType` (`socketTypeId`, `description`) VALUES ('4', 'AM5');


create table `pcConfiguration`.`cpu`(
`CpuId` int not null AUTO_INCREMENT primary key,
`CpuTypeId` int not null,
`cpuName` VARCHAR(50) not null,
`socketTypeId` int not null,
`powerConsuming` int not null,
INDEX `idxCpuTypeId`(`CpuTypeId`),
constraint `fkCpuTypeId`
foreign key(CpuTypeId)
references cpuType(CpuTypeId) on update cascade on delete restrict,
constraint `fkSocketTypeId`
foreign key(socketTypeId)
references sockettype(socketTypeId) on update cascade on delete restrict
);
create table `pcConfiguration`.`ramMemoryGen`(
`ramGenId` int not null AUTO_INCREMENT primary key,
`genDescription` VARCHAR(50) not null

); 


INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('1','1' ,'i3-10100F','1','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('2','1' ,'i3-10105F',1,'65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('3','1' ,'i3-12100F','2','58');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('4','1' ,'i3-10100',1,'65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('5','1' ,'i5-10400F',1,'65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('6','1' ,'i3-10105',1,'65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('7','1' ,'i3-13100F',1,'58');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('8','1' ,'i3-12100','2','60');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('9','1' ,'i5-11400F',1,'65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('10','1' ,'i5-10400',1,'65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('11','1' ,'i5-12400','2','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('12','1' ,'i5-12400F','2','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('13','1' ,'i5-13400F','2','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('14','1' ,'i5-11600',1,'65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('15','1' ,'i5-12600','2','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('16','1' ,'i5-13400','2','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('17','1' ,'i5-11600K',1,'125');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('18','1' ,'i7-11700F',1,'65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('19','1' ,'i7-10700KF',1,'125');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('20','1' ,'i5-12600KF','2','125');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('21','1' ,'i5-13600KF','2','180');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('22','1' ,'i7-10700K',1,'125');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('23','1' ,'i7-11700K',1,'125');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('24','1' ,'i5-12600K','2','125');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('25','1' ,'i5-13600K','2','200');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('26','1' ,'i5-12700','2','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('27','1' ,'i5-12700F','2','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('28','1' ,'i9-10900',1,'65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('29','1' ,'i9-10900',1,'65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('30','1' ,'i7-12700K','2','125');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('31','1' ,'i7-13700F','2','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('32','1' ,'i7-12700KF','2','190');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('33','1' ,'i7-13700','2','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('34','1' ,'i7-13700KF','2','125');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('35','1' ,'i7-13700K','2','180');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('36','2' ,'Ryzen 3-4100','3','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('37','2' ,'Ryzen 5-4500','3','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('38','2' ,'Ryzen 3-3200G','3','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('39','2' ,'Ryzen 3-4300G','3','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('40','2' ,'Ryzen 5-4600G','3','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('41','2' ,'Ryzen 5-3500','3','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('42','2' ,'Ryzen 5-3600','3','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('43','2' ,'Ryzen 5-5500','3','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('44','2' ,'Ryzen 5-3600WOF','3','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('45','2' ,'Ryzen 5-5600G','3','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('46','2' ,'Ryzen 5-3400G','3','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('47','2' ,'Ryzen 5-5600','3','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('48','2' ,'Ryzen 5-5600X','3','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('49','2' ,'Ryzen 7-5700G','3','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('50','2' ,'Ryzen 7-5700X','3','65');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('51','2' ,'Ryzen 7-5800X','3','105');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('52','2' ,'Ryzen 7-5800X3D','3','105');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('53','2' ,'Ryzen 7-7700X','4','105');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('54','2' ,'Ryzen 9-5900X','3','105');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('55','2' ,'Ryzen 9-7900X','4','170');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('56','2' ,'Ryzen 9-5950X','3','105');
INSERT INTO `pcConfiguration`.`cpu` (`CpuId`, `CpuTypeId`,`cpuName`,`socketTypeId`,`powerConsuming`) VALUES ('57','2' ,'Ryzen 9-7950X','4','170');



INSERT INTO `pcConfiguration`.`ramMemoryGen` (`ramGenId`, `genDescription`)
 VALUES ('1', 'DDR4');
INSERT INTO `pcConfiguration`.`ramMemoryGen` (`ramGenId`, `genDescription`)
 VALUES ('2', 'DDR5'); 
 
 create table `pcConfiguration`.`motherboard`(
`motherboardId` int not null AUTO_INCREMENT primary key,
`socketTypeId` int not null,
`motherboardName` VARCHAR(50) not null,
`chipsetName` VARCHAR (50) not null,
`ramMemoryGen` int not null,
INDEX `idxSocketTypeId`(`socketTypeId`),
constraint `fkSocketId`
foreign key(socketTypeId)
references socketType(socketTypeId) on update cascade on delete restrict,
constraint`fkramGenId`
foreign key(ramMemoryGen) 
references ramMemoryGen(ramGenId) on update cascade on delete restrict

);
 
create table `pcConfiguration`.`ramMemory`(
`ramMemoryId` int not null AUTO_INCREMENT primary key,
`ramGenId` int not null,
`ramMemoryName` VARCHAR(250)not null,
INDEX `idxRamGenId`(`ramGenId`),
constraint `fkGenId`
foreign key(ramGenId)
references ramMemoryGen(ramGenId) on update cascade on delete restrict,
constraint `fkramMemoryGen`
foreign key(ramGenId)
references motherboard(ramMemoryGen) on update cascade on delete restrict
); 






INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('1', '1','ASUS PRIME H510M-K','Intel R H510','1');
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('2', '1','GIGABYTE Gigabyte H470M K (rev. 1.0)','Intel H470','1');
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('3', '1','MSI PRO H410M-B','Intel R H510','1');
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('4', '1','ASUS PRIME H510M-D','Intel R H510','1');
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('5', '1','ASUS PRIME B560M-K','Intel R B560','1');
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('6', '1','MSI MAG B560M BAZOOKA','Intel R B560','1');
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('7', '2','ASUS Pro H610M-C-CSM ','Intel R H610','2');
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('8', '2','MSI PRO B660M-P  ','Intel R B660','1');
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('9', '2','MSI PRO B660M-B DDR4INSERT','Intel R B660','1');
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('10', '2','ASUS PRIME B660M-K ','Intel R B660','1');
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('11', '1','MSI MAG B560 TOMAHAWK Wi-Fi','Intel R B560','1');
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('12', '2','ASROCK Z690 Pro RS','Intel R Z690','1'); 
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('13', '2','MSI MAG B660M BAZOOKA','Intel R B660','1');  
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('14', '2','ASUS ProArt B660-CREATOR ','Intel R B660','1');   
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('15', '2','MSI MAG B760 TOMAHAWK WIFI','Intel R B760','1');    
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('16', '2','ASUS ROG STRIX B660-F GAMING WIFI','Intel R B660','2');     
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('17', '2','ASUS PRIME Z690-A','Intel R Z690','2');      
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('18', '2','ASUS TUF GAMING Z790-PLUS','Intel R Z790','1'); 
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('19', '2','ASUS ROG STRIX Z690-F GAMING WIFI','Intel R Z690','2');  
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('20', '2','ASUS ROG MAXIMUS Z690 HERO','Intel R Z690','2');   
 
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('21', '3','ASUS PRIME B550M-A','AMD R 550','1');    
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('22', '3','GIGABYTE B550M AORUS ELITE (rev. 1.0)','AMD R 550','1');   
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('23', '3','GIGABYTE B550M AORUS ELITE (rev. 1.0)','AMD R 550','1'); 
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('24', '3','ASRock B550 Pro4','AMD R 550','1'); 
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('25', '3','ASRock B550 Pro4','AMD R 550','1'); 
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('26', '3','ASUS PRIME B550-PLUS','AMD R 550','1'); 
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('27', '3','ASUS PRIME X570-P','AMD R X570','1'); 
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('28', '4','ASUS PRIME B650M-A','AMD R B560','2');  
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('29', '4','ASUS PRIME B650M-A','AMD R B650','2');  
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('30', '3','ASUS ROG STRIX B550-F GAMING','AMD R B650','1');  
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('31', '4','ASUS PRIME B650-PLUS','AMD R B650','2');  
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('32', '4','ASUS TUF GAMING B650M-PLUS','AMD R B650','2');  
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('33', '4','MSI PRO B650M-A WIFI','AMD R B650','2'); 
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('34', '4','MSI PRO B650M-A WIFI','AMD R B650','2'); 
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('35', '4','MSI PRO B650-P WIFI','AMD R B650','2');  
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('36', '4','MSI MAG B650 TOMAHAWK WIFI','AMD R B650','2');  
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('37', '3','MSI MAG X570S TORPEDO MAX','AMD R X570S','1');   
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('38', '3','ASUS X570 TUF GAMING X570-PLUS','AMD R X570','1');  
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('39', '4','MSI PRO X670-P WIFI','AMD R X670','2');   
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('40', '4','MSI PRO X670-P WIFI','AMD R B650','2'); 
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('41', '4','ASUS ROG CROSSHAIR X670E GENE','AMD R B650','2'); 
INSERT INTO `pcConfiguration`.`motherboard` (`motherboardId`, `socketTypeId`,`motherboardName`,`chipsetName`,`ramMemoryGen`)
 VALUES ('42', '4','ASUS ROG CROSSHAIR X670E HERO','AMD R X670','2'); 
 
 


INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('1', '1','SILICON POWER 4GB DDR4 2666MHz CL19');
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('2', '1','KINGSTON Fury Beast 4GB DDR4 2666MHz CL15'); 
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('3', '1','KINGSTON Renegade 8GB DDR4 3200MHz CL16 ');  
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('4', '1','KINGSTON Beast 8GB DDR4 3200MHz CL16');  
 INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('5', '1','CORSAIR VENGEANCE LPX 8GB (1 x 8GB) DDR4 DRAM 3000MHz CL16');  
 INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('6', '1','KINGSTON Renegade 8GB DDR4 2666MHz CL13');  
 INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('7', '1','A-DATA XPG SPECTRIX D50 8GB DDR4 3200MHz CL16');  
 INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('8', '1','KINGSTON Beast RGB 8GB DDR4 3200MHz CL16');  
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('9', '1','CORSAIR Vengeance LPX 8GB DDR4 3200MHz CL16');   
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('10', '1','KINGSTON Renegade 8GB DDR4 3600MHz CL16');  
 INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('11', '1','CORSAIR Vengeance RGB PRO 8GB DDR4 3600MHz C18');
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('12', '1','SILICONPOWER 16GB DDR4 3200MHz U-DIMM CL22'); 
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('13', '1','KINGSTON Beast 16GB (2 x 8GB) DDR4 3200MHz CL16'); 
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('14', '1','KINGSTON Beast RGB 16GB (2 x 8GB) DDR4 3200MHz CL16');  
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('15', '1','KINGSTON Beast RGB 16GB DDR4 3600MHz CL18'); 
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('16', '1','KINGSTON Beast RGB 16GB DDR4 3733MHz CL19'); 
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('17', '1','CORSAIR Vengeance RGB PRO 16GB DDR4 3600MHz C18'); 
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('18', '1','HYPERX Fury Black 16GB kit (2x8GB) DDR4 2666MHz CL16'); 
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('19', '1','KINGSTON Fury Beast 32GB (2 x 16GB) DDR4 3200MHz CL16');  
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('20', '1','KINGSTON Fury Beast 32GB (2 x 16GB) DDR4 3200MHz CL16');   
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('21', '1','KINGSTON Renegade RGB 64GB (2 x 32GB) DDR4 3200MHz CL16');  
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('22', '1','CORSAIR VENGEANCE RGB PRO 64GB (4x16GB) DDR4 3600MHz');  
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('23', '1','KINGSTON Beast RGB 128GB (4 x 32GB) DDR4 3200MHz CL16'); 
 
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('24', '2','KINGSTON FURY Beast RGB 8GB DDR5 5600MHz CL40');  
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('25', '2','KINGSTON Fury Beast 16GB DDR5 4800MHz CL38');   
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('26', '2','KINGSTON Fury Beast 16GB DDR5 5600MHz CL40');  
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('27', '2','KINGSTON FURY Beast RGB 16GB DDR5 4800MHz CL38');  
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('28', '2','KINGSTON Fury Beast 16GB DDR5 5200MHz CL36'); 
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('29', '2','KINGSTON FURY Beast 16GB DDR5 6000MHz CL40');  
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('30', '2','KINGSTON Fury Beast RGB 16GB DDR5 5600MHz CL36');   
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('31', '2','KINGSTON Fury Beast RGB 16GB DDR5 6000MHz CL36'); 
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('32', '2','KINGSTON Fury Beast 32GB DDR5 5200 MHz CL40'); 
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('33', '2','KINGSTON FURY Beast RGB 32GB DDR5 5200MHz CL40'); 
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('34', '2','KINGSTON FURY Renegade 16GB DDR5 7200MHz CL38');  
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('35', '2','KINGSTON FURY Beast 64GB (2 x 32GB) DDR5 5200MHz CL40'); 
INSERT INTO `pcConfiguration`.`ramMemory` (`ramMemoryId`,`ramGenId`, `ramMemoryName`)
 VALUES ('36', '2','KINGSTON Fury Beast 64GB (2 x 32GB) DDR5 5600MHz CL40'); 

 
 
 
create table `pcConfiguration`.`storageDevices`(
`id` int not null AUTO_INCREMENT primary key,
`name` VARCHAR(255) not null

);  

INSERT INTO `pcConfiguration`.`storageDevices` (`id`,`name`)
 VALUES ('1','TOSHIBA 1TB 3.5", SATA III, 64MB, 7200rpm'); 
INSERT INTO `pcConfiguration`.`storageDevices` (`id`,`name`)
 VALUES ('2','WD 2TB 3.5 SATA III 256MB 7200rpm Blue ');  
INSERT INTO `pcConfiguration`.`storageDevices` (`id`,`name`)
 VALUES ('3','SEAGATE SkyHawk 3TB, 3.5", SATA III, 256MB');   
INSERT INTO `pcConfiguration`.`storageDevices` (`id`,`name`)
 VALUES ('4','WD 4TB 3.5", SATA III, 7200 rpm, 256MB, Gold Series');  
INSERT INTO `pcConfiguration`.`storageDevices` (`id`,`name`)
 VALUES ('5','WD 8TB 3.5", SATA III, 256MB, 7200rpm, Red Pro');  
INSERT INTO `pcConfiguration`.`storageDevices` (`id`,`name`)
 VALUES ('6','WD 12TB 3.5 SATA III 256MB 7200rpm Red Pro'); 
INSERT INTO `pcConfiguration`.`storageDevices` (`id`,`name`)
 VALUES ('7','SEAGATE HDD 10TB 3.5 SATA3 7200rpm 256MB IronWolf'); 
INSERT INTO `pcConfiguration`.`storageDevices` (`id`,`name`)
 VALUES ('8','WD 14TB 3.5 SATA III 512MB 7200rpm Red Plus, Red Pro'); 
INSERT INTO `pcConfiguration`.`storageDevices` (`id`,`name`)
 VALUES ('9', 'CRUCIAL SSD 240GB BX500');
INSERT INTO `pcConfiguration`.`storageDevices` (`id`,`name`)
 VALUES ('10','HP S700 Series 250GB SATAIII');
INSERT INTO `pcConfiguration`.`storageDevices` (`id`,`name`)
 VALUES ('11','A-DATA SU630 480GB 2.5" SATA III ASU630SS-480GQ - SSD');
INSERT INTO `pcConfiguration`.`storageDevices` (`id`,`name`)
 VALUES ('12','WD Green 480GB SATA 2.5" WDS480G3G0A - SSD');
INSERT INTO `pcConfiguration`.`storageDevices` (`id`,`name`)
 VALUES ('13','GIGABYTE SSD 480GB ');
INSERT INTO `pcConfiguration`.`storageDevices` (`id`,`name`)
 VALUES ('14','CRUCIAL SSD 250GB MX500');
INSERT INTO `pcConfiguration`.`storageDevices` (`id`,`name`)
 VALUES ('15','SAMSUNG SSD 250GB 870 EVO 2.5 SATA III');
INSERT INTO `pcConfiguration`.`storageDevices` (`id`,`name`)
 VALUES ('16','SAMSUNG SSD 250GB 870 EVO 2.5 SATA III');
INSERT INTO `pcConfiguration`.`storageDevices` (`id`,`name`)
 VALUES ('17','WD Black 250GB M.2 2280 PCIe');
INSERT INTO `pcConfiguration`.`storageDevices` (`id`,`name`)
 VALUES ('18','SAMSUNG SSD 500GB 870 EVO 2.5 SATA III');
INSERT INTO `pcConfiguration`.`storageDevices` (`id`,`name`)
 VALUES ('19','A-DATA LEGEND 850 512GB PCIe M.2'); 
INSERT INTO `pcConfiguration`.`storageDevices` (`id`,`name`)
 VALUES ('20','KINGSTON KC3000 Series 512GB PCIe NVMe M.2 SSD');  
 

create table `pcConfiguration`.`gpu`(
`gpuId` int not null AUTO_INCREMENT primary key,
`gpuName` VARCHAR(255) not null,
`powerConsuming` int not null

);  
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('1','Nvidia GeForce RTX 3050','75'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('2','Nvidia GeForce RTX 2060','160'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('3','Nvidia GeForce RTX 2060 super','175');  
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('4','Nvidia GeForce RTX 2070','185'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('5','Nvidia GeForce RTX 2070 super','215'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('6','Nvidia GeForce RTX 2080','215');
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('7','Nvidia GeForce RTX 2080','250');  
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('8','Nvidia GeForce RTX 2080ti','260');  
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('9','Nvidia GeForce RTX 3060','170'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('10','Nvidia GeForce RTX 3060 ti','200'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('11','Nvidia GeForce RTX 3070','220'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('12','Nvidia GeForce RTX 3070 ti','250'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('13','Nvidia GeForce RTX 3080','320'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('14','Nvidia GeForce RTX 3090','350'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('15','Nvidia GeForce RTX 3090 ti','370'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('16','Nvidia GeForce RTX 4070','350'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('17','Nvidia GeForce RTX 4070 ti','370'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('18','Nvidia GeForce RTX 4080','450'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('19','Nvidia GeForce RTX 4090','500'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('20','Amd Radeon RX 6600','132'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('21','Amd Radeon RX 6600XT','160'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('22','Amd Radeon RX 6650','180'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('23','Amd Radeon RX 6700','230'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('24','Amd Radeon RX 6700XT','240'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('25','Amd Radeon RX 6750','230'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('26','Amd Radeon RX 6750XT','250'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('27','Amd Radeon RX 6800','230'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('28','Amd Radeon RX 6800XT','300'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('29','Amd Radeon RX 6900XT','300'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('30','Amd Radeon RX 7900XT','315'); 
INSERT INTO `pcConfiguration`.`gpu`(`gpuId`,`gpuName`,`powerConsuming`) VALUES ('31','Amd Radeon RX 7900XTX','355'); 

create table `pcConfiguration`.`psu`(
`psuId` int not null auto_increment primary key,
`psuName` VARCHAR(255) not null,
`power` int not null
);
INSERT INTO `pcConfiguration`.`psu`(`psuId`,`psuName`,`power`) VALUES ('1','CHIEFTEC iARENA','600'); 
INSERT INTO `pcConfiguration`.`psu`(`psuId`,`psuName`,`power`) VALUES ('2','THERMALTAKE Smart RGB','600');
INSERT INTO `pcConfiguration`.`psu`(`psuId`,`psuName`,`power`) VALUES ('3','COOLER MASTER  ELITE V3','500');
INSERT INTO `pcConfiguration`.`psu`(`psuId`,`psuName`,`power`) VALUES ('4','RAIDMAX VORTEX BRONZE','735');
INSERT INTO `pcConfiguration`.`psu`(`psuId`,`psuName`,`power`) VALUES ('5','DEEP COOL PF750 ','750');
INSERT INTO `pcConfiguration`.`psu`(`psuId`,`psuName`,`power`) VALUES ('6','RAIDMAX VORTEX WHITE','800');
INSERT INTO `pcConfiguration`.`psu`(`psuId`,`psuName`,`power`) VALUES ('7','NJOY Woden PWPS','750');
INSERT INTO `pcConfiguration`.`psu`(`psuId`,`psuName`,`power`) VALUES ('8','FSP napajanje HYPER K Pro Series','700');
INSERT INTO `pcConfiguration`.`psu`(`psuId`,`psuName`,`power`) VALUES ('9','FSP Napajanje Hydro M PRO','800');
INSERT INTO `pcConfiguration`.`psu`(`psuId`,`psuName`,`power`) VALUES ('10','ANTEC Napajanje EA750G PRO EC','750');
INSERT INTO `pcConfiguration`.`psu`(`psuId`,`psuName`,`power`) VALUES ('11','FSP napajanje HYDRO G PRO Series','850');
INSERT INTO `pcConfiguration`.`psu`(`psuId`,`psuName`,`power`) VALUES ('12','GIGABYTE 1000W GP-P1000GM','1000');
INSERT INTO `pcConfiguration`.`psu`(`psuId`,`psuName`,`power`) VALUES ('13','GIGABYTE 1000W GP-P1000GM','1000');
INSERT INTO `pcConfiguration`.`psu`(`psuId`,`psuName`,`power`) VALUES ('14','ASUS ROG Strix ROG-STRIX-850G','850');
INSERT INTO `pcConfiguration`.`psu`(`psuId`,`psuName`,`power`) VALUES ('15','CHIEFTEC Polaris Series PPS-1250FC','1250');
INSERT INTO `pcConfiguration`.`psu`(`psuId`,`psuName`,`power`) VALUES ('16','DEEP COOL PQ1000M','1000');
INSERT INTO `pcConfiguration`.`psu`(`psuId`,`psuName`,`power`) VALUES ('17','ASUS napajanje ROG Strix','1000');
INSERT INTO `pcConfiguration`.`psu`(`psuId`,`psuName`,`power`) VALUES ('18','BEQUIET STRAIGHT POWER 11','1200');
INSERT INTO `pcConfiguration`.`psu`(`psuId`,`psuName`,`power`) VALUES ('19','FSP CANNON PRO','2000');
INSERT INTO `pcConfiguration`.`psu`(`psuId`,`psuName`,`power`) VALUES ('20','BEQUIET Napajanje DARK POWER PRO','1500');




















