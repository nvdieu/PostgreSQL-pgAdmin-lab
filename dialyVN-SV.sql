create database DLVN;
use DLVN;

CREATE TABLE Country (
	CountryID char(3) PRIMARY KEY, 
	CountryName varchar(30) 
);

CREATE  TABLE  Province ( 
	ProvinceID char(3) primary key,
	ProvinceName varchar(30), 
	Population float, 
	Area float, 
	CountryID char(3),
    foreign key (CountryID) references Country(CountryID)
);

CREATE TABLE Border ( 
	ProvinceID char(3), 
	NationID char(3),
	PRIMARY KEY (ProvinceID, NationID),
    foreign key (ProvinceID) references Province(ProvinceID)
);

CREATE TABLE Neighbor (
	ProvinceID char(3), 
	NeighborID char(3),
	PRIMARY KEY (ProvinceID, NeighborID),
    foreign key (ProvinceID) references Province(ProvinceID),
    foreign key (NeighborID) references Province(ProvinceID)
);


INSERT INTO Country
VALUES ('C01', 'Mien Bac'),
		('C02', 'Mien Trung'),
		('C03', 'Mien Nam');

INSERT INTO PROVINCE
VALUES('P01','HÀ GIANG',854679,7929.5,'C01'),
	  ('P02','CAO BẰNG',530341,6700.3,'C01'),
	  ('P03','LÀO CAI',730420,6364,'C01'),
	  ('P04','SƠN LA',1248415,14123.5,'C01'),
	  ('P05','LAI CHÂU',460196,9068.8,'C01'),
	  ('P06','BẮC KẠN',313905,4859.96,'C01'),
	  ('P07','LẠNG SƠN',781655,8310.2,'C01'),
	  ('P08','TUYÊN QUANG',784811,5867.9,'C01'),
	  ('P09','YÊN BÁI',821030,6887.7,'C01'),
	  ('P10','THÁI NGUYÊN',1286751,3536.4,'C01'),
	  ('P11','ĐIỆN BIÊN',598856,9541,'C01'),
	  ('P12','PHÚ THỌ',1463726,	3534.6,'C01'),
	  ('P13','VĨNH PHÚC',1154154,1235.2,'C01'),
	  ('P14','BẮC GIANG',1803950,3851.4	,'C01'),
	  ('P15','BẮC NINH',1368840,822.7,'C01'),
	  ('P16','HÀ NỘI',8053663,3358.9,'C01'),
	  ('P17','QUẢNG NINH',1320324,6177.7,'C01'),
	  ('P18','HẢI DƯƠNG',1892254,1668.2,'C01'),
	  ('P19','HẢI PHÒNG',2028514,1522.5,'C01'),
	  ('P20','HÒA BÌNH',854131,4591,'C01'),
	  ('P21','HƯNG YÊN',1252731,930.2,'C01'),
	  ('P22','HÀ NAM',852800,860.9,'C01'),
	  ('P23','THÁI BÌNH',1860447,1570.5,'C01'),
	  ('P24','NAM ĐỊNH',1780393,1668,'C01'),
	  ('P25','NINH BÌNH',982487,1387,'C01'),
	  ('P26','THANH HOA',3640128,11114.7,'C02'),
		('P27','NGHE AN',3327791,16493.7,'C02'),
		('P28','HA TINH',1288866,5990.7,'C02'),
		('P29','QUANG BINH',895430,8065.3,'C02'),
		('P30','QUANG TRI',632375,4739.8,'C02'),
		('P31','THUA THIEN HUE',1128620,5048.2,'C02'),
		('P32','DA NANG',1134310,1284.9,'C02'),
		('P33','QUANG NAM',1495812,10574.7,'C02'),
		('P34','QUANG NGAI',1231697,5135.2,'C02'),
		('P35','KOM TUM',540438,9674.2,'C02'),
		('P36','GIA LAI',1513847,15510.8,'C02'),
		('P37','BINH DINH',1486918,6066.2,'C02'),
		('P38','PHU YEN',961152,5023.4,'C02'),
		('P39','DAK LAK',1869322,13030.5,'C02'),
		('P40','KHANH HOA',1231107,5137.8,'C02'),
		('P41','DAK NONG',622168,6509.3,'C02'),
		('P42','LAM PONG',1296606,9783.2,'C02'),
		('P43','NINH THUAN',590467,3355.3,'C02'),
		('P44','BINH THUAN',1230808,7812.8,'C02'),
	    ('P45',	'Bình Phước',	994.679, 6877,'C03'),
		('P46'	,'Tây Ninh'	,1169165	,4041.4,	'C03'),
		('P47'	,'Bình Dương'	,2426561	,2694.7	,'C03'),
		('P48','Đồng Nai'	,3097107	,5905.7,	'C03'),
		('P49','Thành phố Hồ Chí Minh',	8993082,	2061,	'C03'),
		('P50','Long An',	1688547,4490.2,'C03'),
		('P51',	'Bà Rịa – Vũng Tàu',	1148313,	1980.8,	'C03'),
		('P52', 'Đồng Tháp',	1599504,    3383.8,  'C03'),
		('P53',	'An Giang',	1908352,	3536.7,	'C03'),
		('P54',	'Tiền Giang',	1764185,	2510.5,	'C03'),
		('P55','Vĩnh Long',	1022791,	1475,	'C03'),
		('P56',	'Bến Tre',	1288463,	2394.6,	'C03'),
		('P57',	'Cần Thơ',	1235171,	1439.2,	'C03'),
		('P58',	'Kiên Giang',	1723067,	6348.8,	'C03'),
		('P59',	'Trà Vinh',	1009168,	2358.2,	'C03'),
		('P60',	'Hậu Giang',	733017,	1621.8,	'C03'),
		('P61',	'Sóc Trăng',	1199653,	3311.8,	'C03'),
		('P62',	'Bạc Liêu',	907236,	2669,	'C03'),
		('P63',	'Cà Mau',	1194476,	5294.8	,'C03');




INSERT INTO Border
VALUES ('P17', 'CHN'),
		('P07', 'CHN'),
		('P02', 'CHN'),
		('P01', 'CHN'),
		('P03', 'CHN'),
		('P05', 'CHN'),
		('P11', 'CHN'),
		('P11', 'LAO'),
		('P04', 'LAO'),
		('P26', 'LAO'),
		('P27', 'LAO'),
		('P28', 'LAO'),
		('P29', 'LAO'),
		('P30', 'LAO'),
		('P31', 'LAO'),
		('P33', 'LAO'),
		('P35', 'LAO'),
		('P35', 'CPC'),
		('P36', 'CPC'),
		('P39', 'CPC'),
		('P41', 'CPC'),
		('P45', 'CPC'),
		('P46', 'CPC'),
		('P50', 'CPC'),
		('P52', 'CPC'),
		('P53', 'CPC'),
		('P58', 'CPC');
        
		


INSERT INTO Neighbor 
VALUES 
('P01', 'P02'),-- ('Hà Giang'	          , 'Cao Bằng'),                      
('P01', 'P09'),-- ('Hà Giang'             , 'Yên Bái'),
('P01', 'P03'),-- ('Hà Giang'             , 'Lào Cai'),
('P01', 'P08'),-- ('Hà Giang'             , 'Tuyên Quang'),

('P02', 'P01'),-- ('Cao Bằng'             , 'Hà Giang'),
('P02', 'P08'),-- ('Cao Bằng'             , 'Tuyên Quang'),
('P02', 'P06'),-- ('Cao Bằng'             , 'Bắc Kạn'),
('P02', 'P07'),-- ('Cao Bằng'             , 'Lạng Sơn'),

('P03', 'P01'),-- ('Lào Cai'	          , 'Hà Giang'),
('P03', 'P05'),-- ('Lào Cai'              , 'Lai Châu'),
('P03', 'P09'),-- ('Lào Cai'              , 'Yên Bái'),

('P04', 'P09'),-- ('Sơn La'	              , 'Yên Bái'),
('P04', 'P05'),-- ('Sơn La'               , 'Lai Châu'),
('P04', 'P12'),-- ('Sơn La'               , 'Phú Thọ'),
('P04', 'P20'),-- ('Sơn La'               , 'Hòa Bình'),
('P04', 'P26'),-- ('Sơn La'               , 'Thanh Hóa'),
('P04', 'P11'),-- ('Sơn La'               , 'Điện Biên'),

('P05', 'P11'),-- ('Lai Châu'	          , 'Điện Biên'),
('P05', 'P03'),-- ('Lai Châu'             , 'Lào Cai'),
('P05', 'P09'),-- ('Lai Châu'             , 'Yên Bái'),
('P05', 'P04'),-- ('Lai Châu'             , 'Sơn La'),
('P06', 'P02'),-- ('Bắc Kạn'	          , 'Cao Bằng'),
('P06', 'P07'),-- ('Bắc Kạn'              , 'Lạng Sơn'),
('P06', 'P10'),-- ('Bắc Kạn'              , 'Thái Nguyên'),
('P06', 'P08'),-- ('Bắc Kạn'              , 'Tuyên Quang'),

('P07', 'P02'),-- ('Lạng Sơn'	          , 'Cao Bằng'),
('P07', 'P14'),-- ('Lạng Sơn'             , 'Bắc Giang'),
('P07', 'P10'),-- ('Lạng Sơn'             , 'Thái Nguyên'),
('P07', 'P06'),-- ('Lạng Sơn'             , 'Bắc Kạn'),
('P07', 'P17'),-- ('Lạng Sơn'             , 'Quảng Ninh'),

('P08', 'P01'),-- ('Tuyên Quang'	      , 'Hà Giang'),
('P08', 'P02'),-- ('Tuyên Quang'          , 'Cao Bằng'),
('P08', 'P12'),-- ('Tuyên Quang'          , 'Phú Thọ'),
('P08', 'P06'),-- ('Tuyên Quang'          , 'Bắc Kạn'),
('P08', 'P10'),-- ('Tuyên Quang'          , 'Thái Nguyên'),
('P08', 'P09'),-- ('Tuyên Quang'          , 'Yên Bái'),
('P08', 'P13'),-- ('Tuyên Quang'          , 'Vĩnh Phúc'),

('P09', 'P03'),-- ('Yên Bái'	          , 'Lào Cai'),
('P09', 'P01'),-- ('Yên Bái'              , 'Hà Giang'),
('P09', 'P08'),-- ('Yên Bái'              , 'Tuyên Quang'),
('P09', 'P12'),-- ('Yên Bái'              , 'Phú Thọ'),
('P09', 'P04'),-- ('Yên Bái'              , 'Sơn La'),
('P09', 'P05'),-- ('Yên Bái'              , 'Lai Châu'),

('P10', 'P06'),-- ('Thái Nguyên'          , 'Bắc Kạn'),
('P10', 'P07'),-- ('Thái Nguyên'	      , 'Lạng Sơn'),
('P10', 'P14'),-- ('Thái Nguyên'	      , 'Bắc Giang'),
('P10', 'P16'),-- ('Thái Nguyên'	      , 'Hà Nội'),
('P10', 'P08'),-- ('Thái Nguyên'	      , 'Tuyên Quang'),
('P10', 'P13'),-- ('Thái Nguyên'	      , 'Vĩnh Phúc'),

('P11', 'P05'),-- ('Điện Biên'	          , 'Lai Châu'),
('P11', 'P04'),-- ('Điện Biên'            , 'Sơn La'),

('P12', 'P04'),-- ('Phú Thọ'	          , 'Sơn La'),
('P12', 'P09'),-- ('Phú Thọ'	          , 'Yên Bái'),
('P12', 'P08'),-- ('Phú Thọ'	          , 'Tuyên Quang'),
('P12', 'P13'),-- ('Phú Thọ'	          , 'Vĩnh Phúc'),
('P12', 'P16'),-- ('Phú Thọ'	          , 'Hà Nội'),
('P12', 'P20'),-- ('Phú Thọ'	          , 'Hòa Bình'),

('P13', 'P08'),-- ('Vĩnh Phúc'	          , 'Tuyên Quang'),
('P13', 'P10'),-- ('Vĩnh Phúc'            , 'Thái Nguyên'),
('P13', 'P16'),-- ('Vĩnh Phúc'            , 'Hà Nội'),
('P13', 'P12'),-- ('Vĩnh Phúc'            , 'Phú Thọ'),

('P14', 'P07'),-- ('Bắc Giang'	          , 'Lạng Sơn'),
('P14', 'P10'),-- ('Bắc Giang'            , 'Thái Nguyên'),
('P14', 'P16'),-- ('Bắc Giang'            , 'Hà Nội'),
('P14', 'P17'),-- ('Bắc Giang'            , 'Quảng Ninh'),
('P14', 'P15'),-- ('Bắc Giang'            , 'Bắc Ninh'),
('P14', 'P18'),-- ('Bắc Giang'            , 'Hải Pương'),

('P15', 'P14'),-- ('Bắc Ninh'	          , 'Bắc Giang'),
('P15', 'P16'),-- ('Bắc Ninh'             , 'Hà Nội'),
('P15', 'P21'),-- ('Bắc Ninh'             , 'Hưng Yên'),
('P15', 'P18'),-- ('Bắc Ninh'             , 'Hải Pương'),

('P16', 'P12'),-- ('Hà Nội'	              , 'Phú Thọ'),
('P16', 'P13'),-- ('Hà Nội'               , 'Vĩnh Phúc'),
('P16', 'P10'),-- ('Hà Nội'               , 'Thái Nguyên'),
('P16', 'P14'),-- ('Hà Nội'               , 'Bắc Giang'),
('P16', 'P15'),-- ('Hà Nội'               , 'Bắc Ninh'),
('P16', 'P21'),-- ('Hà Nội'               , 'Hưng Yên'),
('P16', 'P22'),-- ('Hà Nội'               , 'Hà Nam'),
('P16', 'P20'),-- ('Hà Nội'               , 'Hòa Bình'),

('P17', 'P07'),-- ('Quảng Ninh'           , 'Lạng Sơn'),
('P17', 'P14'),-- ('Quảng Ninh'           , 'Bắc Giang'),
('P17', 'P18'),-- ('Quảng Ninh'           , 'Hải Pương'),
('P17', 'P19'),-- ('Quảng Ninh'           , 'Hải Phòng'),

('P18', 'P15'),-- ('Hải Pương'	          , 'Bắc Ninh'),
('P18', 'P14'),-- ('Hải Pương'	          , 'Bắc Giang'),
('P18', 'P17'),-- ('Hải Pương'            , 'Quảng Ninh'),
('P18', 'P19'),-- ('Hải Pương'            , 'Hải Phòng'),
('P18', 'P23'),-- ('Hải Pương'            , 'Thái Bình'),
('P18', 'P21'),-- ('Hải Pương'            , 'Hưng Yên'),

('P19', 'P23'),-- ('Hải Phòng'        	  , 'Thái Bình '),
('P19', 'P18'),-- ('Hải Phòng'            , 'Hải Pương'),
('P19', 'P17'),-- ('Hải Phòng'            , 'Quảng Ninh'),

('P20', 'P26'),-- ('Hòa Bình'	          , 'Thanh Hóa'),
('P20', 'P04'),-- ('Hòa Bình'             , 'Sơn La'),
('P20', 'P12'),-- ('Hòa Bình'             , 'Phú Thọ'),
('P20', 'P16'),-- ('Hòa Bình'             , 'Hà Nội'),
('P20', 'P22'),-- ('Hòa Bình'             , 'Hà Nam'),
('P20', 'P25'),-- ('Hòa Bình'             , 'Ninh Bình'),

('P21', 'P22'),-- ('Hưng Yên'	          , 'Hà Nam'),
('P21', 'P16'),-- ('Hưng Yên'             , 'Hà Nội'),
('P21', 'P15'),-- ('Hưng Yên'             , 'Bắc Ninh'),
('P21', 'P18'),-- ('Hưng Yên'             , 'Hải Pương'),
('P21', 'P23'),-- ('Hưng Yên'             , 'Thái Bình'),

('P22', 'P24'),-- ('Hà Nam'	              , 'Nam Định'),
('P22', 'P25'),-- ('Hà Nam'               , 'Ninh Bình'),
('P22', 'P20'),-- ('Hà Nam'               , 'Hòa Bình'),
('P22', 'P16'),-- ('Hà Nam'               , 'Hà Nội'),
('P22', 'P21'),-- ('Hà Nam'               , 'Hưng Yên'),
('P22', 'P23'),-- ('Hà Nam'               , 'Thái Bình'),

('P23', 'P19'),-- ('Thái Bình'	          , 'Hải Phòng'),
('P23', 'P18'),-- ('Thái Bình'            , 'Hải Pương'),
('P23', 'P21'),-- ('Thái Bình'            , 'Hưng Yên'),
('P23', 'P22'),-- ('Thái Bình'            , 'Hà Nam'),
('P23', 'P24'),-- ('Thái Bình'            , 'Nam Định'),

('P24', 'P23'),-- ('Nam Định'             , 'Thái Bình'),
('P24', 'P22'),-- ('Nam Định'             , 'Hà Nam'),
('P24', 'P25'),-- ('Nam Định'             , 'Ninh Bình'),
('P25', 'P24'),-- ('Ninh Bình'            , 'Nam Định'),
('P25', 'P22'),-- ('Ninh Bình'            , 'Hà Nam'),
('P25', 'P20'),-- ('Ninh Bình'            , 'Hòa Bình'),
('P25', 'P26'),-- ('Ninh Bình'            , 'Thanh Hóa'),

('P26', 'P20'),-- ('Thanh Hóa'	          , 'Hòa Bình'),
('P26', 'P27'),-- ('Thanh Hóa'            , 'Nghệ An'),
('P26', 'P25'),-- ('Thanh Hóa'            , 'Ninh Bình'),
('P26', 'P04'),-- ('Thanh Hóa'            , 'Sơn La'),

('P27', 'P26'),-- ('Nghệ An'	          , 'Thanh Hóa'),
('P27', 'P28'),-- ('Nghệ An'              , 'Hà Tĩnh'),

('P28', 'P27'),-- ('Hà Tĩnh'	          , 'Nghệ An'),
('P28', 'P29'),-- ('Hà Tĩnh'              , 'Quảng Bình'),

('P29', 'P28'),-- ('Quảng Bình'           , 'Hà Tĩnh'),
('P29', 'P30'),-- ('Quảng Bình'           , 'Quảng Trị'),

('P30', 'P29'),-- ('Quảng Trị'            , 'Quảng Bình'),
('P30', 'P31'),-- ('Quảng Trị'            , 'Thừa Thiên Huế'),

('P31', 'P30'),-- ('Thừa Thiên Huế'	      , 'Quảng Trị'),
('P31', 'P32'),-- ('Thừa Thiên Huế'       , 'Đà Nẵng'),
('P31', 'P33'),-- ('Thừa Thiên Huế'       , 'Quảng Nam'),

('P32', 'P31'),-- ('Đà Nẵng'	          , 'Thừa Thiên Huế'),
('P32', 'P33'),-- ('Đà Nẵng'              , 'Quảng Nam'),

('P33', 'P32'),-- ('Quảng Nam'            , 'Đà Nẵng'),
('P33', 'P34'),-- ('Quảng Nam'            , 'Quảng Ngãi'),
('P33', 'P35'),-- ('Quảng Nam'            , 'Kon Tum'),
('P33', 'P31'),-- ('Quảng Nam'            , 'Thừa Thiên Huế'),

('P34', 'P33'),-- ('Quảng Ngãi'           , 'Quảng Nam'),
('P34', 'P35'),-- ('Quảng Ngãi'           , 'Kon Tum'),
('P34', 'P36'),-- ('Quảng Ngãi'           , 'Gia Lai'),
('P34', 'P37'),-- ('Quảng Ngãi'           , 'Bình Định'),

('P35', 'P33'),-- ('Kon Tum'              , 'Quảng Nam'),
('P35', 'P34'),-- ('Kon Tum'	          , 'Quảng Ngãi'),
('P35', 'P36'),-- ('Kon Tum'	          , 'Gia Lai'),

('P36', 'P35'),-- ('Gia Lai'	          , 'Kon Tum'),
('P36', 'P34'),-- ('Gia Lai'              , 'Quảng Ngãi'),
('P36', 'P37'),-- ('Gia Lai'              , 'Bình Định'),
('P36', 'P38'),-- ('Gia Lai'              , 'Phú Yên'),
('P36', 'P39'),-- ('Gia Lai'              , 'Đắk Lắk'),

('P37', 'P34'),-- ('Bình Định'            , 'Quảng Ngãi'),
('P37', 'P36'),-- ('Bình Định'            , 'Gia Lai'),
('P37', 'P38'),-- ('Bình Định'            , 'Phú Yên'),

('P38', 'P37'),-- ('Phú Yên'	          , 'Bình Định'),
('P38', 'P36'),-- ('Phú Yên'              , 'Gia Lai'),
('P38', 'P39'),-- ('Phú Yên'              , 'Đắk Lắk'),
('P38', 'P40'),-- ('Phú Yên'              , 'Khánh Hòa'),

('P39', 'P38'),-- ('Đắk Lắk'              , 'Phú Yên'),
('P39', 'P40'),-- ('Đắk Lắk'	          , 'Khánh Hòa'),
('P39', 'P42'),-- ('Đắk Lắk'	          , 'Lâm Đồng'),
('P39', 'P41'),-- ('Đắk Lắk'	          , 'Đắk Nông'),
('P39', 'P36'),-- ('Đắk Lắk'	          , 'Gia Lai'),

('P40', 'P38'),-- ('Khánh Hòa'            , 'Phú Yên'),
('P40', 'P39'),-- ('Khánh Hòa'            , 'Đắk Lắk'),
('P40', 'P42'),-- ('Khánh Hòa'            , 'Lâm Đồng'),
('P40', 'P43'),-- ('Khánh Hòa'            , 'Ninh Thuận'),

('P41', 'P39'),-- ('Đắk Nông'	          , 'Đắk Lắk'),
('P41', 'P42'),-- ('Đắk Nông'             , 'Lâm Đồng'),
('P41', 'P44'),-- ('Đắk Nông'             , 'Bình Phước'),

('P42', 'P47'),-- ('Lâm Đồng'             , 'Đồng Nai'),
('P42', 'P44'),-- ('Lâm Đồng'             , 'Bình Phước'),
('P42', 'P41'),-- ('Lâm Đồng'             , 'Đắk Nông'),
('P42', 'P39'),-- ('Lâm Đồng'             , 'Đắk Lắk'),
('P42', 'P40'),-- ('Lâm Đồng'             , 'Khánh Hòa'),
('P42', 'P43'),-- ('Lâm Đồng'             , 'Ninh Thuận'),
('P42', 'P48'),-- ('Lâm Đồng'             , 'Bình Thuận'),

('P43', 'P48'),-- ('Ninh Thuận'           , 'Bình Thuận'),
('P43', 'P42'),-- ('Ninh Thuận'           , 'Lâm Đồng'),
('P43', 'P40'),-- ('Ninh Thuận'           , 'Khánh Hòa'),

('P44', 'P41'),-- ('Bình Phước'           , 'Đắk Nông'),
('P44', 'P42'),-- ('Bình Phước'           , 'Lâm Đồng'),
('P44', 'P47'),-- ('Bình Phước'           , 'Đồng Nai'),
('P44', 'P46'),-- ('Bình Phước'           , 'Bình Pương'),
('P44', 'P45'),-- ('Bình Phước'           , 'Tây Ninh'),

('P45', 'P50'),-- ('Tây Ninh'             , 'Long An'),
('P45', 'P49'),-- ('Tây Ninh'             , 'Thành Phố Hồ Chí Minh'),
('P45', 'P46'),-- ('Tây Ninh'             , 'Bình Pương'),
('P45', 'P44'),-- ('Tây Ninh'             , 'Bình Phước'),

('P46', 'P45'),-- ('Bình Pương'	          , 'Tây Ninh'),
('P46', 'P44'),-- ('Bình Pương'           , 'Bình Phước'),
('P46', 'P47'),-- ('Bình Pương'           , 'Đồng Nai'),
('P46', 'P49'),-- ('Bình Pương'           , 'Thành Phố Hồ Chí Minh'),

('P47', 'P46'),-- ('Đồng Nai'             , 'Bình Pương'),
('P47', 'P44'),-- ('Đồng Nai'             , 'Bình Phước'),
('P47', 'P42'),-- ('Đồng Nai'             , 'Lâm Đồng'),
('P47', 'P48'),-- ('Đồng Nai'             , 'Bình Thuận'),
('P47', 'P49'),-- ('Đồng Nai'             , 'Thành Phố Hồ Chí Minh'),
('P47', 'P51'),-- ('Đồng Nai'             , 'Bà Rịa Vũng Tàu'),

('P48', 'P51'),-- ('Bình Thuận'           , 'Bà Rịa Vũng Tàu'),
('P48', 'P47'),-- ('Bình Thuận'           , 'Đồng Nai'),
('P48', 'P42'),-- ('Bình Thuận'           , 'Lâm Đồng'),
('P48', 'P43'),-- ('Bình Thuận'           , 'Ninh Thuận'),

('P49', 'P50'),-- ('Thành Phố Hồ Chí Minh', 'Long An'),
('P49', 'P45'),-- ('Thành Phố Hồ Chí Minh', 'Tây Ninh'),
('P49', 'P46'),-- ('Thành Phố Hồ Chí Minh', 'Bình Pương'),
('P49', 'P47'),-- ('Thành Phố Hồ Chí Minh', 'Đồng Nai'),
('P49', 'P54'),-- ('Thành Phố Hồ Chí Minh', 'Tiền Giang'),
('P49', 'P51'),-- ('Thành Phố Hồ Chí Minh', 'Bà Rịa Vũng Tàu'),

('P50', 'P49'),-- ('Long An'	          , 'Thành Phố Hồ Chí Minh'),
('P50', 'P52'),-- ('Long An'              , 'Đồng Tháp'),
('P50', 'P54'),-- ('Long An'              , 'Tiền Giang'),
('P50', 'P45'),-- ('Long An'              , 'Tây Ninh'),

('P51', 'P49'),-- ('Bà Rịa Vũng Tàu'      , 'Thành Phố Hồ Chí Minh'),
('P51', 'P47'),-- ('Bà Rịa Vũng Tàu'      , 'Đồng Nai'),
('P51', 'P48'),-- ('Bà Rịa Vũng Tàu'      , 'Bình Thuận'),

('P52', 'P53'),-- ('Đồng Tháp'	          , 'An Giang'),
('P52', 'P57'),-- ('Đồng Tháp'            , 'Cần Thơ'),
('P52', 'P55'),-- ('Đồng Tháp'            , 'Vĩnh Long'),
('P52', 'P54'),-- ('Đồng Tháp'            , 'Tiền Giang'),
('P52', 'P50'),-- ('Đồng Tháp'            , 'Long An'),

('P53', 'P58'),-- ('An Giang'	          , 'Kiên Giang'),
('P53', 'P57'),-- ('An Giang'             , 'Cần Thơ'),
('P53', 'P52'),-- ('An Giang'             , 'Đồng Tháp'),

('P54', 'P52'),-- ('Tiền Giang'	          , 'Đồng Tháp'),
('P54', 'P55'),-- ('Tiền Giang'           , 'Vĩnh Long'),
('P54', 'P56'),-- ('Tiền Giang'           , 'Bến Tre'),
('P54', 'P50'),-- ('Tiền Giang'           , 'Long An'),
('P54', 'P49'),-- ('Tiền Giang'           , 'Thành Phố Hồ Chí Minh'),

('P55', 'P57'),-- ('Vĩnh Long'	          , 'Cần Thơ'),
('P55', 'P52'),-- ('Vĩnh Long'            , 'Đồng Tháp'),
('P55', 'P54'),-- ('Vĩnh Long'            , 'Tiền Giang'),
('P55', 'P56'),-- ('Vĩnh Long'            , 'Bến Tre'),
('P55', 'P59'),-- ('Vĩnh Long'            , 'Trà Vinh'),
('P55', 'P61'),-- ('Vĩnh Long'            , 'Sóc Trăng'),
('P55', 'P60'),-- ('Vĩnh Long'            , 'Hậu Giang'),

('P56', 'P59'),-- ('Bến Tre'          	  , 'Trà Vinh'),
('P56', 'P55'),-- ('Bến Tre'	          , 'Vĩnh Long'),
('P56', 'P54'),-- ('Bến Tre'	          , 'Tiền Giang'),

('P57', 'P58'),-- ('Cần Thơ'	          , 'Kiên Giang'),
('P57', 'P53'),-- ('Cần Thơ'	          , 'An Giang'),
('P57', 'P52'),-- ('Cần Thơ'	          , 'Đồng Tháp'),
('P57', 'P55'),-- ('Cần Thơ'	          , 'Vĩnh Long'),
('P57', 'P60'),-- ('Cần Thơ'	          , 'Hậu Giang'),

('P58', 'P53'),-- ('Kiên Giang'           , 'An Giang'),
('P58', 'P57'),-- ('Kiên Giang'           , 'Cần Thơ'),
('P58', 'P60'),-- ('Kiên Giang'           , 'Hậu Giang'),
('P58', 'P62'),-- ('Kiên Giang'           , 'Bạc Liêu'),
('P58', 'P63'),-- ('Kiên Giang'           , 'Cà Mau'),

('P59', 'P61'),-- ('Trà Vinh'	          , 'Sóc Trăng'),
('P59', 'P55'),-- ('Trà Vinh'             , 'Vĩnh Long'),
('P59', 'P56'),-- ('Trà Vinh'             , 'Bến Tre'),

('P60', 'P58'),-- ('Hậu Giang'	          , 'Kiên Giang'),
('P60', 'P57'),-- ('Hậu Giang'            , 'Cần Thơ'),
('P60', 'P55'),-- ('Hậu Giang'            , 'Vĩnh Long'),
('P60', 'P61'),-- ('Hậu Giang'            , 'Sóc Trăng'),
('P60', 'P62'),-- ('Hậu Giang'            , 'Bạc Liêu'),

('P61', 'P62'),-- ('Sóc Trăng'	          , 'Bạc Liêu'),
('P61', 'P60'),-- ('Sóc Trăng'            , 'Hậu Giang'),
('P61', 'P59'),-- ('Sóc Trăng'            , 'Trà Vinh'),
('P61', 'P55'),-- ('Sóc Trăng'            , 'Vĩnh Long'),

('P62', 'P63'),-- ('Bạc Liêu'	          , 'Cà Mau'),
('P62', 'P58'),-- ('Bạc Liêu'             , 'Kiên Giang'),
('P62', 'P60'),-- ('Bạc Liêu'             , 'Hậu Giang'),
('P62', 'P61'),-- ('Bạc Liêu'             , 'Sóc Trăng'),

('P63', 'P58'),-- ('Cà Mau'	              , 'Kiên Giang'),
('P63', 'P62');-- ('Cà Mau'               , 'Bạc Liêu')

-- TEST
SELECT COUNT(*)
FROM Province;
--
SELECT *
FROM Province
WHERE CountryID NOT IN 
	(SELECT CountryID
	FROM Country
	);
-- 
SELECT CountryID, Count(*)
FROM Province
GROUP BY CountryID
ORDER BY CountryID;
--
SELECT ProvinceID
FROM Neighbor A
GROUP BY ProvinceID
HAVING COUNT(*) <> (
	SELECT COUNT(*)
	FROM Neighbor
	WHERE A.ProvinceID = NeighborID
);
--
SELECT COUNT(*)
FROM Neighbor;

