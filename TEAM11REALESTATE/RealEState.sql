--Put the sql here
DBCC CHECKIDENT(Addresses, RESEED, 0)
DBCC CHECKIDENT(Agencies, RESEED, 0)
DBCC CHECKIDENT(PropertyTypes, RESEED, 0)
DBCC CHECKIDENT(Agents, RESEED, 0)
DBCC CHECKIDENT(Districts, RESEED, 0)
DBCC CHECKIDENT(Areas, RESEED, 0)
DBCC CHECKIDENT(Sellers, RESEED, 0)




delete from Properties
delete from PropertyTypes
delete from sellers
delete from Areas
delete from Districts
delete from Agents
delete from Agencies
delete from Addresses







--PropertyType

insert into PropertyTypes (TypeName,LeasePriod) values ('HDB','99')
insert into PropertyTypes (TypeName,LeasePriod) values ('Hybrid','99')
insert into PropertyTypes (TypeName,LeasePriod) values ('Condo','99')
insert into PropertyTypes (TypeName,LeasePriod) values ('Condo','999')
insert into PropertyTypes (TypeName,LeasePriod) values ('Condo','freehold')
insert into PropertyTypes (TypeName,LeasePriod) values ('Apartment','99')
insert into PropertyTypes (TypeName,LeasePriod) values ('Apartment','999')
insert into PropertyTypes (TypeName,LeasePriod) values ('Apartment','freehold')
insert into PropertyTypes (TypeName,LeasePriod) values ('Landed','99')
insert into PropertyTypes (TypeName,LeasePriod) values ('Landed','999')
insert into PropertyTypes (TypeName,LeasePriod) values ('Landed','freehold')






--Addresses
insert into Addresses(UnitNumber,BlockNumber,StreetName,PostalCode,Email,Mobile,Phone,Website)
values('#02-12','Blk 210','Yishun street 21','760210','abc@hotmail.com','87659000','234067','abc.com')
insert into Addresses(UnitNumber,BlockNumber,StreetName,PostalCode,Email,Mobile,Phone,Website)
values('#03-15','Blk 216','Ang Mo Kio street 21','760216','aaa@hotmail.com','87659345','234546','aac.com')
insert into Addresses(UnitNumber,BlockNumber,StreetName,PostalCode,Email,Mobile,Phone,Website)
values('#04-33','Blk 270','Tai Seng street 21','760270','ada@hotmail.com','86759345','235546','aad.com')
insert into Addresses(UnitNumber,BlockNumber,StreetName,PostalCode,Email,Mobile,Phone,Website)
values('#05-38','Blk 370','Seng Kong street 21','716370','adac@hotmail.com','86753945','435546','aadc.com')
insert into Addresses(UnitNumber,BlockNumber,StreetName,PostalCode,Email,Mobile,Phone,Website)
values('#08-32','Blk 470','Bishan street 21','726470','aeac@hotmail.com','82153945','431146','adcd.com')
insert into Addresses(UnitNumber,BlockNumber,StreetName,PostalCode,Email,Mobile,Phone,Website)
values('#09-33','Blk 326','Sembawang street 21','721326','afaz@hotmail.com','87853945','531126','ccc.com')
insert into Addresses(UnitNumber,BlockNumber,StreetName,PostalCode,Email,Mobile,Phone,Website)
values('#10-35','Blk 126','Sembawang street 21','721126','afay@hotmail.com','87993945','535526','eee.com')
insert into Addresses(UnitNumber,BlockNumber,StreetName,PostalCode,Email,Mobile,Phone,Website)
values('#15-38','Blk 425','Bugis street 21','721425','afas@hotmail.com','88993945','535528','fff.com')
insert into Addresses(UnitNumber,BlockNumber,StreetName,PostalCode,Email,Mobile,Phone,Website)
values('#14-31','Blk 225','Admirality street 21','720225','afaj@hotmail.com','87653945','835528','ffg.com')
insert into Addresses(UnitNumber,BlockNumber,StreetName,PostalCode,Email,Mobile,Phone,Website)
values('#11-33','Blk 445','Woodlands street 21','723445','afai@hotmail.com','84323945','935528','hff.com')



insert into Addresses(UnitNumber,BlockNumber,StreetName,PostalCode,Email,Mobile,Phone,Website)
values('#1-33','Blk 245','Woodlands street 2','2222','qqq@hotmail.com','84323945','935528','gg.com')
insert into Addresses(UnitNumber,BlockNumber,StreetName,PostalCode,Email,Mobile,Phone,Website)
values('#32-33','Blk 345','Woodlands street 2','555','lll@hotmail.com','84323945','935528','333.com')
insert into Addresses(UnitNumber,BlockNumber,StreetName,PostalCode,Email,Mobile,Phone,Website)
values('#22-33','Blk 245','Woodlands street 2','555','hhh@hotmail.com','84323945','935528','www.com')
insert into Addresses(UnitNumber,BlockNumber,StreetName,PostalCode,Email,Mobile,Phone,Website)
values('#18-33','Blk 645','Woodlands street 2','99999','aaa@hotmail.com','84323945','935528','jjj.com')




--Agencies Tables
INSERT INTO Agencies (AgencyName, AddressID)
VALUES	('FarEastGroup', 1)


INSERT INTO Agencies (AgencyName, AddressID)
VALUES ('HongSan', 2)




INSERT INTO Agencies (AgencyName, AddressID)
VALUES ('AStarProperty', 3)




INSERT INTO Agencies (AgencyName, AddressID)
VALUES ('SingAgency', 4)



INSERT INTO Agencies (AgencyName, AddressID)
VALUES ('UnitedProperties', 5)


--Agents table
INSERT INTO Agents (CEANumber, SalesPersonName, SalesPersonMobileNumber, Email,AgencyID)
VALUES ( 00000001, 'Timothy Foo', 91251049, 'timothyf@fareastgroup.sg',1);






INSERT INTO Agents (CEANumber, SalesPersonName, SalesPersonMobileNumber, Email,AgencyID)
VALUES ( 00000002, 'Susan Leong', 93251049, 'susanleong@abc.sg',2)




INSERT INTO Agents (CEANumber, SalesPersonName, SalesPersonMobileNumber, Email,AgencyID)
VALUES ( 00000003, 'Vera Loh', 93252041,'veraloh@abc.sg',1)




INSERT INTO Agents (CEANumber, SalesPersonName, SalesPersonMobileNumber, Email,AgencyID)
VALUES ( 00000004, 'Yong Jing Wen', 93251044, 'jingwen@abc.sg',3)




INSERT INTO Agents (CEANumber, SalesPersonName, SalesPersonMobileNumber, Email,AgencyID)
VALUES ( 00000005, 'Derek Chia', 98824828, 'derekchia@abc.sg',4)




--Seller









insert into Districts (DistrictCode, Districtname) values ('01', 'City - CBD')
insert into Districts (DistrictCode, Districtname) values ('02', 'City - Marina Area')
insert into Districts (DistrictCode, Districtname) values ('03', 'Central South')
insert into Districts (DistrictCode, Districtname) values ('04', 'South - Keppel')
insert into Districts (DistrictCode, Districtname) values ('05', 'South West')
insert into Districts (DistrictCode, Districtname) values ('06', 'City - City Hall')
insert into Districts (DistrictCode, Districtname) values ('07', 'City- Beach Road ')
insert into Districts (DistrictCode, Districtname) values ('08', 'Central - Little India')
insert into Districts (DistrictCode, Districtname) values ('09', 'Central - Orchard')
insert into Districts (DistrictCode, Districtname) values ('10', 'Central: Tanglin')
insert into Districts (DistrictCode, Districtname) values ('11', 'Central - Newton')
insert into Districts (DistrictCode, Districtname) values ('12', 'Central - Toa Payoh')
insert into Districts (DistrictCode, Districtname) values ('13', 'Central East')


--District and Area
insert into Districts (DistrictCode, Districtname) values ('14', 'Central East - Eunos')
insert into Districts (DistrictCode, Districtname) values ('15', 'East Coast - Katong')
insert into Districts (DistrictCode, Districtname) values ('16', 'Upper East Coast')
insert into Districts (DistrictCode, Districtname) values ('17', 'Far East - Changi')
insert into Districts (DistrictCode, Districtname) values ('18', 'Far East - Tampines')
insert into Districts (DistrictCode, Districtname) values ('19', 'North East - Hougang')
insert into Districts (DistrictCode, Districtname) values ('20', 'Central North - AMK')
insert into Districts (DistrictCode, Districtname) values ('21', 'Central West')
insert into Districts (DistrictCode, Districtname) values ('22', 'Far West - Jurong')
insert into Districts (DistrictCode, Districtname) values ('23', 'North West')
insert into Districts (DistrictCode, Districtname) values ('24', 'Far North West')
insert into Districts (DistrictCode, Districtname) values ('25', 'Far North')
insert into Districts (DistrictCode, Districtname) values ('26', 'North')
insert into Districts (DistrictCode, Districtname) values ('27', 'Far North- Yishun')
insert into Districts (DistrictCode, Districtname) values ('28', 'North East - Seletar')


insert into areas (areaname, districtid) values ('Boat Quay', 1)


insert into areas (areaname, districtid) values ('Chinatown', 1)
insert into areas (areaname, districtid) values ('Havelock Road', 1)
insert into areas (areaname, districtid) values ('Marina Square', 1)
insert into areas (areaname, districtid) values ('Raffles Place', 1)
insert into areas (areaname, districtid) values ('Suntec City', 1)


insert into areas (areaname, districtid) values ('Anson Road', 2)
insert into areas (areaname, districtid) values ('Chinatown', 2)
insert into areas (areaname, districtid) values ('Neil Road', 2)
insert into areas (areaname, districtid) values ('Raffles Place', 2)
insert into areas (areaname, districtid) values ('Shenton Way', 2)
insert into areas (areaname, districtid) values ('Tanjong Pagar', 2)


insert into areas (areaname, districtid) values ('Alexandra Road', 3)
insert into areas (areaname, districtid) values ('Tiong Bahru', 3)
insert into areas (areaname, districtid) values ('Queenstown', 3)


insert into areas (areaname, districtid) values ('Keppel', 4)
insert into areas (areaname, districtid) values ('Mount Faber', 4)
insert into areas (areaname, districtid) values ('Sentosa', 4)
insert into areas (areaname, districtid) values ('Telok Blangah', 4)


insert into areas (areaname, districtid) values ('Buona Vista', 5)
insert into areas (areaname, districtid) values ('Dover', 5)
insert into areas (areaname, districtid) values ('Pasir Panjang', 5)
insert into areas (areaname, districtid) values ('West Coast', 5)


insert into areas (areaname, districtid) values ('City Hall', 6)
insert into areas (areaname, districtid) values ('High Street', 6)
insert into areas (areaname, districtid) values ('North Bridge Road', 6)


insert into areas (areaname, districtid) values ('Beach Road', 7)
insert into areas (areaname, districtid) values ('Bencoolen Road', 7)
insert into areas (areaname, districtid) values ('Bugis', 7)
insert into areas (areaname, districtid) values ('Rochor', 7)


insert into areas (areaname, districtid) values ('Little India', 8)
insert into areas (areaname, districtid) values ('Farrer Park', 8)
insert into areas (areaname, districtid) values ('Serangoon Road', 8)


insert into areas (areaname, districtid) values ('Cairnhill', 9)
insert into areas (areaname, districtid) values ('Killiney', 9)
insert into areas (areaname, districtid) values ('Leonie Hil', 9)
insert into areas (areaname, districtid) values ('Dunearn Road', 9)
insert into areas (areaname, districtid) values ('Newton', 9)


insert into areas (areaname, districtid) values ('Balmoral', 10)
insert into areas (areaname, districtid) values ('Bukit Timah', 10)
insert into areas (areaname, districtid) values ('Grange Road', 10)
insert into areas (areaname, districtid) values ('Holland', 10)
insert into areas (areaname, districtid) values ('Orchard Boulevard', 10)
insert into areas (areaname, districtid) values ('River Valley', 10)
insert into areas (areaname, districtid) values ('Tanglin Road', 10)


insert into areas (areaname, districtid) values ('Chancery', 11)
insert into areas (areaname, districtid) values ('Bukit Timah', 11)
insert into areas (areaname, districtid) values ('Dunearn Road', 11)
insert into areas (areaname, districtid) values ('Newton', 11)


insert into areas (areaname, districtid) values ('Balestier', 12)
insert into areas (areaname, districtid) values ('Moulmein', 12)
insert into areas (areaname, districtid) values ('Novena', 12)
insert into areas (areaname, districtid) values ('Toa Payoh', 12)


insert into areas (areaname, districtid) values ('Potong Pasir', 13)
insert into areas (areaname, districtid) values ('Macpherson', 13)


insert into areas (areaname, districtid) values ('Eunos', 14)
insert into areas (areaname, districtid) values ('Geylang', 14)
insert into areas (areaname, districtid) values ('Kembangan', 14)
insert into areas (areaname, districtid) values ('Paya Lebar', 14)


insert into areas (areaname, districtid) values ('Katong', 15)
insert into areas (areaname, districtid) values ('Marine Parade', 15)
insert into areas (areaname, districtid) values ('Siglap', 15)
insert into areas (areaname, districtid) values ('Tanjong Rhu', 15)


insert into areas (areaname, districtid) values ('Bayshore', 16)
insert into areas (areaname, districtid) values ('Bedok', 16)
insert into areas (areaname, districtid) values ('Chai Chee', 16)


insert into areas (areaname, districtid) values ('Changi', 17)
insert into areas (areaname, districtid) values ('Loyang', 17)
insert into areas (areaname, districtid) values ('Pasir Ris', 17)


insert into areas (areaname, districtid) values ('Pasir Ris', 18)
insert into areas (areaname, districtid) values ('Simei', 18)
insert into areas (areaname, districtid) values ('Tampines', 18)


insert into areas (areaname, districtid) values ('Hougang', 19)
insert into areas (areaname, districtid) values ('Punggol', 19)
insert into areas (areaname, districtid) values ('Sengkang', 19)


insert into areas (areaname, districtid) values ('Ang Mo Kio', 20)
insert into areas (areaname, districtid) values ('Bishan', 20)
insert into areas (areaname, districtid) values ('Braddell Road', 20)
insert into areas (areaname, districtid) values ('Thomson', 20)






--Seller
insert into Sellers (SellerName,AddressID) values ('Bob',2)
insert into Sellers (SellerName,AddressID) values ('Charli',6)
insert into Sellers (SellerName,AddressID) values ('Dave',7)
insert into Sellers (SellerName,AddressID) values ('Alice',3)
insert into Sellers (SellerName,AddressID) values ('Eric',6)
insert into Sellers (SellerName,AddressID) values ('Frank',10)
insert into Sellers (SellerName,AddressID) values ('George',7)
insert into Sellers (SellerName,AddressID) values ('Helen',6)
insert into Sellers (SellerName,AddressID) values ('Issac',5)





--Properties
insert into Properties (ProperName, Rooms, PropertyTopDate, PricePSF, SizePSF, Description, DistrictID, PropertyTypeID, AgentID, SellerID, AddressID, LeaseStartDate)
values ('Rio Vista', '5', '11-7-2016', 260, 1300, 'Facilities', 1, 1, 1, 1, 1, '12-6-2017')

insert into Properties (ProperName, Rooms, PropertyTopDate, PricePSF, SizePSF, Description, DistrictID, PropertyTypeID, AgentID, SellerID, AddressID, LeaseStartDate)
values ('Eco', '3', '2016-08-12', 336, 1184, 'Facilities', 2, 2, 2, 2, 2, '2016-08-12')

insert into Properties (ProperName, Rooms, PropertyTopDate, PricePSF, SizePSF, Description, DistrictID, PropertyTypeID, AgentID, SellerID, AddressID, LeaseStartDate)
values ('Thomson Impressions', '1', '2016-08-12', 220, 1000, 'Facilities', 3, 3, 3, 3, 3, '2016-08-12')

insert into Properties (ProperName, Rooms, PropertyTopDate, PricePSF, SizePSF, Description, DistrictID, PropertyTypeID, AgentID, SellerID, AddressID, LeaseStartDate)
values ('The Morris Residences', '4', '2016-08-12', 270, 1190, 'Facilities', 3, 3, 4, 3, 3, '2016-08-12')

insert into Properties (ProperName, Rooms, PropertyTopDate, PricePSF, SizePSF, Description, DistrictID, PropertyTypeID, AgentID, SellerID, AddressID, LeaseStartDate)
values ('Lake Grande', '5', '2016-08-12', 320, 1400, 'Facilities', 4, 4, 5, 4, 4, '2016-08-12')

insert into Properties (ProperName, Rooms, PropertyTopDate, PricePSF, SizePSF, Description, DistrictID, PropertyTypeID, AgentID, SellerID, AddressID, LeaseStartDate)
values ('The Seawind', '2', '2016-08-12', 290, 1130, 'Facilities', 5, 5, 5, 5, 5, '2016-08-12')

insert into Properties (ProperName, Rooms, PropertyTopDate, PricePSF, SizePSF, Description, DistrictID, PropertyTypeID, AgentID, SellerID, AddressID, LeaseStartDate)
values ('38 Jervois', '5', '2016-08-12', 250, 1230, 'Facilities', 6, 6, 2,5, 6, '2016-08-12')

insert into Properties (ProperName, Rooms, PropertyTopDate, PricePSF, SizePSF, Description, DistrictID, PropertyTypeID, AgentID, SellerID, AddressID, LeaseStartDate)
values ('The Meyerise', '7', '2016-08-12', 400, 1600, 'Facilities', 7, 6, 3, 7, 7, '2016-08-12')

insert into Properties (ProperName, Rooms, PropertyTopDate, PricePSF, SizePSF, Description, DistrictID, PropertyTypeID, AgentID, SellerID, AddressID, LeaseStartDate)
values ('Twin Peaks', '1', '2016-08-12', 230, 1030, 'Facilities', 8, 8, 4, 8, 8, '2016-08-12')

insert into Properties (ProperName, Rooms, PropertyTopDate, PricePSF, SizePSF, Description, DistrictID, PropertyTypeID, AgentID, SellerID, AddressID, LeaseStartDate)
values ('Sky Vue', '5', '2016-08-12', 340, 1400, 'Facilities', 9, 9, 5, 9, 9, '2016-08-12')




