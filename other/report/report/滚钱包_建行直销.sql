#保有资产总份额(如意宝)	
SELECT
	SUM(q.quty_balance / 100)
FROM
	osdc.osdc_static_quty q
WHERE
	q.agency_no = '469'
AND q.net_no = '0002' 
#当日申购交易金额(如意宝)	
SELECT IFNULL(SUM(q.confirm_balance / 100),0)
FROM	osdc.osdc_trade_confirm q
WHERE	 q.agency_no = '469' AND q.net_no = '0002'
AND q.confirm_date = "20170803"
AND q.busi_code in ('122')
#当日赎回交易金额(如意宝)	
SELECT IFNULL(SUM(q.confirm_balance),0)
FROM	osdc.osdc_trade_confirm q
WHERE	 q.agency_no = '469' AND q.net_no = '0002'
AND q.confirm_date = "20170803"
AND q.busi_code in ('124')