COMMIT;
SELECT c.id, c.column_name,c.querySql FROM report_resource_column c WHERE c.sheet_id = 2;

#获取首行 (121,302,304,306,127,301,305,303,307,308,315,376,356,378,382,918,309,352,394,339,338,348)
#日交易客户数
#合作平台总交易客户数
SELECT q.agency_no AS 'code',
			COUNT(DISTINCT q.cust_id) AS 'num'
		FROM	osdc.osdc_trade_confirm q
		WHERE	 q.agency_no in (121,302,304,306,127,301,305,303,307,308,315,376,356,378,382,918,309,352,394,339,338,348) 
		AND q.confirm_date <= '20170803'
		AND q.busi_code in ('120','122','139')
		GROUP BY	q.agency_no
#合作平台总保有资产客户数
SELECT b.agency_no AS 'code', 
			COUNT(1) AS 'num'
FROM (
	SELECT
			q.agency_no,
			q.cust_id
		FROM
			osdc.osdc_static_quty q
		WHERE
			q.agency_no in (121,302,304,306,127,301,305,303,307,308,315,376,356,378,382,918,309,352,394,339,338,348)
		GROUP BY
			q.agency_no, q.cust_id
		HAVING
			SUM(q.quty_balance) > 0
) b GROUP BY b.agency_no;
#合作平台总空仓客户数
SELECT b.agency_no as 'code',
		  COUNT(1) as 'num' 
FROM (
	  SELECT
			q.agency_no,q.cust_id
		FROM
			osdc.osdc_static_quty q
		WHERE
			q.agency_no in (121,302,304,306,127,301,305,303,307,308,315,376,356,378,382,918,309,352,394,339,338,348)
		GROUP BY
			q.agency_no, q.cust_id
		HAVING 
			SUM(q.quty_balance) = 0
) b  GROUP BY b.agency_no;
#合作平台日交易客户数
SELECT q.agency_no AS 'code',
					COUNT(DISTINCT q.cust_id) AS 'num'
		FROM	osdc.osdc_trade_confirm q
		WHERE	 q.agency_no in (121,302,304,306,127,301,305,303,307,308,315,376,356,378,382,918,309,352,394,339,338,348) 
		AND q.confirm_date = '20170803'
		AND q.busi_code in ('120','122','139')
		GROUP BY	q.agency_no
#合作平台总交易金额
SELECT q.agency_no AS 'code',
				SUM(q.confirm_balance / 100) AS 'num'
		FROM	osdc.osdc_trade_confirm q
		WHERE	 q.agency_no in (121,302,304,306,127,301,305,303,307,308,315,376,356,378,382,918,309,352,394,339,338,348) 
		AND q.confirm_date <= '20170803'
		AND q.busi_code in ('120','122','139')
		GROUP BY	q.agency_no
#合作平台总保有金额
SELECT q.agency_no AS 'code',
			SUM(q.quty_balance * i.nav /100) AS 'num'
FROM (
	SELECT
			q.agency_no,q.quty_balance,q.fund_code
		FROM
			osdc.osdc_static_quty q
    WHERE
			q.agency_no in (121,302,304,306,127,301,305,303,307,308,315,376,356,378,382,918,309,352,394,339,338,348)
) q JOIN (
	 select t2.fund_id as fund_id, t2.nav as nav from
	 (
			select fund_id , max(nav_date) max_nav_date from osdc.osdc_net_info t group by fund_id
	 ) t1, osdc.osdc_net_info t2
	 where t1.fund_id = t2.fund_id
	 and t2.nav_date = t1.max_nav_date
) i ON q.fund_code = i.fund_id
GROUP BY q.agency_no;
#合作平台日新增交易金额
SELECT q.agency_no AS 'code',
				SUM(q.confirm_balance / 100) AS 'num'
		FROM	osdc.osdc_trade_confirm q
		WHERE	 q.agency_no in (121,302,304,306,127,301,305,303,307,308,315,376,356,378,382,918,309,352,394,339,338,348) 
		AND q.confirm_date = '20170803'
		AND q.busi_code in ('120','122','139')
		GROUP BY	q.agency_no
#合作平台总交易客户数(京东金融)
SELECT COUNT(1) 
FROM (
  SELECT DISTINCT q.cust_id AS 'num'
	FROM	osdc.osdc_trade_confirm q 
	WHERE	 q.agency_no = '260'
	AND q.confirm_date <= '20170803'
	AND q.busi_code in ('120','122','139')
	AND q.cust_id IN (
		SELECT DISTINCT i.cust_id FROM osdc.osdc_trade_acct_info i WHERE i.agency_no = '260' AND i.net_no = '26001'
	)
	GROUP BY	q.agency_no,q.cust_id
)b
#合作平台总保有资产客户数(京东金融)
SELECT	COUNT(1) AS 'num' 
FROM (
	SELECT
			q.cust_id
		FROM
			osdc.osdc_static_quty q,
			osdc.osdc_trade_acct_info i
		WHERE
			q.fund_acct = i.fund_acct
		AND q.trade_acct = i.trade_acct
		AND q.cust_id = i.cust_id
		AND i.agency_no = '260'
		AND i.net_no = '26001'
		GROUP BY q.agency_no, q.cust_id
		HAVING
			SUM(q.quty_balance) > 0
) b 
#合作平台总空仓客户数(京东金融)
SELECT COUNT(1) 
FROM (
	SELECT
		DISTINCT q.cust_id
	FROM
		osdc.osdc_static_quty q,
		osdc.osdc_trade_acct_info i
	WHERE
		q.fund_acct = i.fund_acct
	AND q.trade_acct = i.trade_acct
	AND q.cust_id = i.cust_id
	AND i.agency_no = '260'
	AND i.net_no = '26001'
	GROUP BY q.agency_no, q.cust_id
	HAVING
		SUM(q.quty_balance) = 0
)b
#合作平台日交易客户数(京东金融)
SELECT COUNT(1) AS 'num' FROM (
	SELECT DISTINCT q.cust_id
	FROM	osdc.osdc_trade_confirm q
	WHERE	 q.agency_no = '260' 
	AND q.confirm_date = '20170803'
	AND q.busi_code in ('120','122','139')
	AND q.cust_id IN (
		SELECT DISTINCT i.cust_id FROM osdc.osdc_trade_acct_info i WHERE i.agency_no = '260' AND i.net_no = '26001'
	)
) b
#合作平台总交易金额(京东金融)
SELECT SUM(q.confirm_balance / 100) AS 'num'
FROM	osdc.osdc_trade_confirm q
WHERE	 q.agency_no = '260'
AND q.confirm_date <= '20170803'
AND q.busi_code in ('120','122','139')
AND q.cust_id IN (
	SELECT DISTINCT i.cust_id FROM osdc.osdc_trade_acct_info i WHERE i.agency_no = '260' AND i.net_no = '26001'
)
GROUP BY	q.agency_no
#合作平台总保有金额(京东金融)
SELECT SUM(q.quty_balance * i.nav / 100) AS 'num'
FROM (
	SELECT
			q.agency_no,q.quty_balance,q.fund_code
		FROM
			osdc.osdc_static_quty q,
			osdc.osdc_trade_acct_info i
		WHERE
			q.fund_acct = i.fund_acct
		AND q.trade_acct = i.trade_acct
		AND q.cust_id = i.cust_id
		AND i.agency_no = '260'
		AND i.net_no = '26001'
) q JOIN (
	 select t2.fund_id as fund_id, t2.nav as nav from
	 (
			select fund_id , max(nav_date) max_nav_date from osdc.osdc_net_info t group by fund_id
	 ) t1,osdc.osdc_net_info t2
	 where t1.fund_id = t2.fund_id
	 and t2.nav_date = t1.max_nav_date
) i ON q.fund_code = i.fund_id
GROUP BY q.agency_no;
#合作平台日新增交易金额(京东金融)
SELECT SUM(q.confirm_balance /100) AS 'num'
FROM	osdc.osdc_trade_confirm q
WHERE	 q.agency_no = '260'
AND q.confirm_date = '20170803'
AND q.busi_code in ('120','122','139')
AND q.cust_id IN (
	SELECT DISTINCT i.cust_id FROM osdc.osdc_trade_acct_info i WHERE i.agency_no = '260' AND i.net_no = '26001'
)
GROUP BY	q.agency_no
#合作平台总交易客户数(如意宝)
SELECT 
						COUNT(DISTINCT q.cust_id)
		FROM	osdc.osdc_trade_confirm q
		WHERE	 q.agency_no = '469' AND q.net_no = '0002'
		AND q.confirm_date <= '20170803'
		AND q.busi_code in ('120','122','139');
#合作平台总保有资产客户数(如意宝)
SELECT COUNT(1) AS 'num' 
FROM (
	SELECT
			q.cust_id
		FROM
			osdc.osdc_static_quty q
		WHERE
			q.agency_no = '469' AND q.net_no = '0002'
		GROUP BY
			q.cust_id
		HAVING
			SUM(q.quty_balance) > 0
) b
#合作平台总空仓客户数(如意宝)
SELECT COUNT(1) FROM (
	SELECT
			COUNT(q.cust_id)
		FROM
			osdc.osdc_static_quty q
		WHERE
			q.agency_no = '469' AND q.net_no = '0002'
		GROUP BY
			 q.cust_id
		HAVING
			SUM(q.quty_balance) = 0
) b;
#合作平台日交易客户数(如意宝)
SELECT COUNT(DISTINCT q.cust_id)
	FROM	osdc.osdc_trade_confirm q
	WHERE	 q.agency_no = '469' AND q.net_no = '0002'
	AND q.confirm_date = '20170803'
	AND q.busi_code in ('120','122','139')
	GROUP BY	q.agency_no
#合作平台总交易金额如意宝
SELECT q.agency_no AS 'code',
				SUM(q.confirm_balance /100) AS 'num'
		FROM	osdc.osdc_trade_confirm q
		WHERE	 q.agency_no = '469' AND q.net_no = '0002'
		AND q.confirm_date <= '20170803'
		AND q.busi_code in ('120','122','139')
		GROUP BY	q.agency_no	
#合作平台总保有金额如意宝
SELECT SUM(q.quty_balance * i.nav / 100) AS 'num'
FROM (
	SELECT
			q.agency_no,q.quty_balance,q.fund_code
		FROM
			osdc.osdc_static_quty q
		WHERE
			q.agency_no = '469' AND q.net_no = '0002'
) q JOIN (
	 select t2.fund_id as fund_id, t2.nav as nav from
	 (
			select fund_id , max(nav_date) max_nav_date from osdc.osdc_net_info t group by fund_id
	 ) t1,osdc.osdc_net_info t2
	 where t1.fund_id = t2.fund_id
	 and t2.nav_date = t1.max_nav_date
) i ON q.fund_code = i.fund_id
#合作平台日新增交易金额如意宝
SELECT IFNULL(SUM(q.confirm_balance /100),0) AS 'num'
FROM	osdc.osdc_trade_confirm q
WHERE	 q.agency_no = '469' AND q.net_no = '0002'
AND q.confirm_date = '20170803'
AND q.busi_code in ('120','122','139')

