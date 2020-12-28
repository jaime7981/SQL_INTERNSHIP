USE HDLAO_POWERBI_TEST
USE HDLAO_CONSOLIDATION_V2
GO
select top 50 * FROM dbo.VIEW2_KN_COUNTRY WHERE year = 2019 AND bus_id = 25 AND month = 2 AND acc_id = '02000'
GO
select top 100 * FROM dbo.VIEW2_KN_CONSOLIDATED where year = 2019 AND month = 9 AND bus_id = 25 AND acc_id = '47000' --net sales
go
select top 50 * FROM HDLAO_CONSOLIDATION_V2.dbo.VIEWV2_EXCHANGERATES WHERE exchrt_year = 2019 AND exchrt_periodabrev ='YTDA'
GO