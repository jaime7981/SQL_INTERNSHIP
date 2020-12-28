USE HDLAO_POWERBI_TEST
GO
CREATE TABLE HDLAO_POWERBI_TEST.dbo.COUNTRY
	([year] int,
	 [month] int,
	 cmpny_name varchar(15),
	 curr_name varchar(5),
	 cntry_name varchar(11),
	 cntry_abrev varchar(5),
	 cntry_iso varchar(5),
	 bus_name varchar(14),
	 bus_abrev varchar(9),
	 bus_group varchar(13),
	 per_name varchar(20),
	 per_abrev varchar(5),
	 acc_name varchar(5),
	 [value] float);
GO
CREATE TABLE HDLAO_POWERBI_TEST.dbo.BUSINESS
	([year] int,
	 [month] int,
	 bus_name varchar(14),
	 bus_abrev varchar(9),
	 bus_group varchar(13),
	 per_name varchar(20),
	 per_abrev varchar(5),
	 acc_name varchar(5),
	 [value] float);
GO
CREATE TABLE HDLAO_POWERBI_TEST.dbo.EXCHANGE_RATE
	([year] int,
	 [month] int,
	 cntry_name varchar(11),
	 per_name varchar(20),
	 per_abrev varchar(5),
	 exch_close float,
	 exch_aver float,
	 exch_close_aver float);
GO