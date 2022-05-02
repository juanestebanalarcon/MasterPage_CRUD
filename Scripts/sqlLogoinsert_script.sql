use MFG
GO
insert into SYSCOMPANY(NAME,ADDRESS,RFC,ADDRESS2,ADDRESS3,CITY,STATE,ZIP,COUNTRY,FAX,TELEPHONE,SOURCE,INICAT,SERUSER,SERPASSWORD,INTSECURITY,entbillunitprice,web,LOGO)
select 'logo','Cr 9','---','No. 33a','04','PALMIRA','Valle del cauca','765531','COL','---','----','---','---','userRoot','adminPass',0,0,'----',BulkColumn FROM OPENROWSET(Bulk 'C:\Users\Juan Esteban Alarcon\Desktop\Logo_.jpeg',Single_blob) as image
