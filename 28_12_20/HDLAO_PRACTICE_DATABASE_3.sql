USE HDLAO_CONSOLIDATION_V2
USE HDLAO_POWERBI_TEST
GO
DROP TABLE HDLAO_POWERBI_TEST.dbo.COUNTRY
GO
SELECT [year], [month], cmpny_name, curr_name, cntry_name, cntry_abrev_name, cntry_iso, bus_name, bus_abrev_name, bus_group, per_name, per_abrev_name, acc_name, [value]
INTO HDLAO_POWERBI_TEST.dbo.COUNTRY
FROM HDLAO_CONSOLIDATION_V2.dbo.VIEW2_KN_COUNTRY WHERE year = 2019
GO 
DROP TABLE HDLAO_POWERBI_TEST.dbo.BUSINESS
GO
SELECT [year], [month], curr_name, bus_name, bus_abrev_name, bus_group, per_name, per_abrev_name, acc_name, [value]
INTO HDLAO_POWERBI_TEST.dbo.BUSINESS
FROM HDLAO_CONSOLIDATION_V2.dbo.VIEW2_KN_CONSOLIDATED where year = 2019 --net sales
GO
--INSERT INTO HDLAO_POWERBI_TEST.dbo.EXCHANGE_RATE
--SELECT exchrt_year, exchrt_month, exchrt_contryname, exchrt_periodname, exchrt_periodabrev, exchrt_close, exchrt_average, exchrt_close_average 
--FROM HDLAO_CONSOLIDATION_V2.dbo.VIEWV2_EXCHANGERATES WHERE exchrt_year = 2019
--GO