USE HDLAO_CONSOLIDATION_V2
USE HDLAO_POWERBI_TEST
GO
INSERT INTO HDLAO_POWERBI_TEST.dbo.COUNTRY 
SELECT [year], [month], cmpny_name, curr_name, cntry_name, cntry_abrev_name, cntry_iso, bus_name, bus_abrev_name, bus_group, per_name, per_abrev_name, acc_name, [value]
FROM HDLAO_CONSOLIDATION_V2.dbo.VIEW2_KN_COUNTRY WHERE year = 2020 or year = 2018
GO
INSERT INTO HDLAO_POWERBI_TEST.dbo.BUSINESS 
SELECT [year], [month], curr_name, bus_name, bus_abrev_name, bus_group, per_name, per_abrev_name, acc_name, [value]
FROM HDLAO_CONSOLIDATION_V2.dbo.VIEW2_KN_CONSOLIDATED where year = 2020 or year = 2018
GO
INSERT INTO HDLAO_POWERBI_TEST.dbo.EXCHANGE_RATE
select exchrt_year, exchrt_month, exchrt_contryname, exchrt_periodname, exchrt_periodabrev, exchrt_close, exchrt_average, exchrt_close_average 
from HDLAO_CONSOLIDATION_V2.dbo.VIEWV2_EXCHANGERATES WHERE exchrt_year = 2020 or exchrt_year = 2018
GO