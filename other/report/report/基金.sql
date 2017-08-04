##获取首行的sql 去掉滚钱宝

## 产品在transcore有多个名字，改成从产品中心取
SELECT DISTINCT	o.id AS 'code',	o.fund_name AS 'name' FROM	product.pcs_product o WHERE	o.fund_type NOT IN ('9', '30') AND o.id <> '600001';

SELECT DISTINCT	o.id AS 'code' FROM	product.pcs_product o WHERE	o.fund_type NOT IN ('9', '30') AND o.id <> '600001';

SELECT c.column_name , c.querySql FROM report_resource_column c WHERE c.sheet_id = 4 AND c.querySql NOT IN ('NONE', 'SUM');

SELECT DISTINCT o.product_id, o.product_name FROM	transcore.tcs_order o WHERE o.product_id = '600049';

SELECT * FROM product.pcs_product p WHERE p.id = '600049'

##申购交易总客户数
SELECT
	o.product_id AS 'code', 
  o.product_name,
  COUNT(DISTINCT o.user_id) AS 'num'
FROM
	transcore.tcs_order o
JOIN transcore.tcs_order_pay p ON o.id = p.order_id
JOIN transcore.tcs_order_pay_detail d ON p.id = d.order_pay_id
AND p.latest_status = 'S'
AND p.phase_zone = 'Recharge1_Resp'
AND d.pay_tool IN ('11', '12','13')
AND o.sub_trans_code IN ('0101','0103')
AND o.product_id in (
	SELECT DISTINCT	o.product_id FROM	transcore.tcs_order o WHERE	o.fund_type NOT IN ('9', '30') AND o.product_id <> '600001'
)
AND d.bank_date <= '20170803'
GROUP BY o.product_id;

#持有定投计划总客户数
SELECT
	tp.product_id AS 'code', 
  COUNT(DISTINCT tp.user_id) AS 'num'
FROM
	transcore.tcs_aip_order tp
WHERE
	tp.STATUS <> '0'
AND tp.product_id in (
	SELECT DISTINCT	o.product_id FROM	transcore.tcs_order o WHERE	o.fund_type NOT IN ('9', '30') AND o.product_id <> '600001'
)
GROUP BY tp.product_id;

SELECT
  o.product_name,
  COUNT(DISTINCT tp.user_id) AS 'num'
FROM
	transcore.tcs_aip_order tp 
RIGHT JOIN ( SELECT DISTINCT	o.product_id , o.product_name FROM	transcore.tcs_order o WHERE	o.fund_type NOT IN ('9', '30') AND o.product_id <> '600001' ) o
ON tp.product_id = o.product_id
AND	tp.STATUS <> '0'
GROUP BY o.product_id;

#定投扣款总客户数
SELECT
	o.product_id AS 'code', 
  o.product_name,
  COUNT(DISTINCT o.user_id) AS 'num'
FROM
	transcore.tcs_order o
JOIN transcore.tcs_order_pay p ON o.id = p.order_id
JOIN transcore.tcs_order_pay_detail d ON p.id = d.order_pay_id
AND p.latest_status = 'S'
AND p.phase_zone = 'Recharge1_Resp'
AND d.pay_tool IN ('11', '12','13')
AND o.sub_trans_code = '1201'
AND o.product_id in (
	SELECT DISTINCT	o.product_id FROM	transcore.tcs_order o WHERE	o.fund_type NOT IN ('9', '30') AND o.product_id <> '600001'
)
AND d.bank_date <= '20170803'
GROUP BY o.product_id;

#保有资产总客户数
SELECT
	fb.product_id AS 'code', 
  
  COUNT(DISTINCT fb.asset_acct_id) AS 'num'
FROM
	merchant.mht_user_fund_quty_balance fb
WHERE
	fb.quty_balance > 0
AND (fb.quty_status IS NULL OR fb.quty_status != 'D')
AND fb.product_id in (
	SELECT DISTINCT	o.product_id FROM	transcore.tcs_order o WHERE	o.fund_type NOT IN ('9', '30') AND o.product_id <> '600001'
)
GROUP BY fb.product_id;

#当日申购交易客户数
SELECT
	o.product_id AS 'code', 
  o.product_name,
  COUNT(DISTINCT o.user_id) AS 'num'
FROM
	transcore.tcs_order o
JOIN transcore.tcs_order_pay p ON o.id = p.order_id
JOIN transcore.tcs_order_pay_detail d ON p.id = d.order_pay_id
AND p.latest_status = 'S'
AND p.phase_zone = 'Recharge1_Resp'
AND d.pay_tool IN ('11', '12','13')
AND o.sub_trans_code IN ('0101','0103')
AND o.product_id in (
	SELECT DISTINCT	o.product_id FROM	transcore.tcs_order o WHERE	o.fund_type NOT IN ('9', '30') AND o.product_id <> '600001'
)
AND d.bank_date = '20170803'
GROUP BY o.product_id;

#当日定投扣款客户数

SELECT
	o.product_id AS 'code', 
  o.product_name,
  COUNT(DISTINCT o.user_id) AS 'num'
FROM
	transcore.tcs_order o
JOIN transcore.tcs_order_pay p ON o.id = p.order_id
JOIN transcore.tcs_order_pay_detail d ON p.id = d.order_pay_id
AND p.latest_status = 'S'
AND p.phase_zone = 'Recharge1_Resp'
AND d.pay_tool IN ('11', '12','13')
AND o.sub_trans_code = '1201'
AND o.product_id in (
	SELECT DISTINCT	o.product_id FROM	transcore.tcs_order o WHERE	o.fund_type NOT IN ('9', '30') AND o.product_id <> '600001'
)
AND d.bank_date = '20170803'
GROUP BY o.product_id;

#当日赎回客户数
SELECT
	o.product_id AS 'code', 
  o.product_name,
  COUNT(DISTINCT o.user_id) AS 'num'
FROM
	transcore.tcs_order o
WHERE o.sub_trans_code IN ('0301','0302','0302')
AND o.product_id in (
	SELECT DISTINCT	o.product_id FROM	transcore.tcs_order o WHERE	o.fund_type NOT IN ('9', '30') AND o.product_id <> '600001'
)
AND o.latest_status <> 'C'
AND o.trans_flag <> 'C'
AND o.apply_date = '20170803'
AND o.product_id
GROUP BY o.product_id;
#申购交易总金额
SELECT
  o.product_id AS 'code', 
  o.product_name,
	SUM(o.amount /100) AS 'num'
FROM
	transcore.tcs_order o
JOIN transcore.tcs_order_pay p ON o.id = p.order_id
JOIN transcore.tcs_order_pay_detail d ON p.id = d.order_pay_id
AND p.latest_status = 'S'
AND p.phase_zone = 'Recharge1_Resp'
AND d.pay_tool IN ('11', '12','13')
AND o.sub_trans_code IN ('0101','0103')
AND o.product_id in (
	SELECT DISTINCT	o.product_id FROM	transcore.tcs_order o WHERE	o.fund_type NOT IN ('9', '30') AND o.product_id <> '600001'
)
AND d.bank_date <= '20170803'
GROUP BY o.product_id;
#定投扣款总金额
SELECT
	o.product_id AS 'code', 
  o.product_name,
	SUM(o.amount /100) AS 'num'
FROM
	transcore.tcs_order o
JOIN transcore.tcs_order_pay p ON o.id = p.order_id
JOIN transcore.tcs_order_pay_detail d ON p.id = d.order_pay_id
AND p.latest_status = 'S'
AND p.phase_zone = 'Recharge1_Resp'
AND d.pay_tool IN ('11', '12','13')
AND o.sub_trans_code = '1201'
AND o.product_id in (
	SELECT DISTINCT	o.product_id FROM	transcore.tcs_order o WHERE	o.fund_type NOT IN ('9', '30') AND o.product_id <> '600001'
)
AND d.bank_date <= '20170803'
GROUP BY o.product_id;
#保有资产总金额
SELECT
	fb.product_id AS 'code', SUM(fb.quty_balance * p.nav / 100) AS 'num'
FROM
	merchant.mht_user_fund_quty_balance fb JOIN ( SELECT id, IFNULL(nav, '1') AS nav FROM product.pcs_product p ) p ON fb.product_id = p.id
AND	fb.quty_balance > 0
AND (fb.quty_status IS NULL OR fb.quty_status != 'D')
AND fb.product_id in (
	SELECT DISTINCT	o.product_id FROM	transcore.tcs_order o WHERE	o.fund_type NOT IN ('9', '30') AND o.product_id <> '600001'
)
GROUP BY fb.product_id;
#保有资产总份额
SELECT
	fb.product_id AS 'code', SUM(fb.quty_balance / 100) AS 'num'
FROM
	merchant.mht_user_fund_quty_balance fb
WHERE
	fb.quty_balance > 0
AND (fb.quty_status IS NULL OR fb.quty_status != 'D')
AND fb.product_id in (
	SELECT DISTINCT	o.product_id FROM	transcore.tcs_order o WHERE	o.fund_type NOT IN ('9', '30') AND o.product_id <> '600001'
)
GROUP BY fb.product_id;
#当日申购交易金额
SELECT
  o.product_id AS 'code', 
  o.product_name,
	SUM(o.amount /100) AS 'num'
FROM
	transcore.tcs_order o
JOIN transcore.tcs_order_pay p ON o.id = p.order_id
JOIN transcore.tcs_order_pay_detail d ON p.id = d.order_pay_id
AND p.latest_status = 'S'
AND p.phase_zone = 'Recharge1_Resp'
AND d.pay_tool IN ('11', '12','13')
AND o.sub_trans_code IN ('0101','0103')
AND o.product_id in (
	SELECT DISTINCT	o.product_id FROM	transcore.tcs_order o WHERE	o.fund_type NOT IN ('9', '30') AND o.product_id <> '600001'
)
AND d.bank_date = '20170803'
GROUP BY o.product_id;
#当日定投扣款金额
SELECT
	o.product_id AS 'code',
  o.product_name, 
	SUM(o.amount / 100) AS 'num'
FROM
	transcore.tcs_order o
JOIN transcore.tcs_order_pay p ON o.id = p.order_id
JOIN transcore.tcs_order_pay_detail d ON p.id = d.order_pay_id
AND p.latest_status = 'S'
AND p.phase_zone = 'Recharge1_Resp'
AND d.pay_tool IN ('11', '12','13')
AND o.sub_trans_code = '1201'
AND o.product_id in (
	SELECT DISTINCT	o.product_id FROM	transcore.tcs_order o WHERE	o.fund_type NOT IN ('9', '30') AND o.product_id <> '600001'
)
AND d.bank_date = '20170803'
GROUP BY o.product_id;
#当日赎回交易金额
SELECT
	o.product_id AS 'code', 
  o.product_name, 
	SUM(o.amount /100) AS 'num'
FROM
	transcore.tcs_order o
WHERE o.sub_trans_code IN ('0301','0302','0302')
AND o.product_id in (
	SELECT DISTINCT	o.product_id FROM	transcore.tcs_order o WHERE	o.fund_type NOT IN ('9', '30') AND o.product_id <> '600001'
)
AND o.latest_status <> 'C'
AND o.trans_flag <> 'C'
AND o.apply_date = '20170803'
GROUP BY o.product_id;
#申购交易总客户数(合计)
SELECT
  COUNT(DISTINCT o.user_id)
FROM
	transcore.tcs_order o
JOIN transcore.tcs_order_pay p ON o.id = p.order_id
JOIN transcore.tcs_order_pay_detail d ON p.id = d.order_pay_id
AND p.latest_status = 'S'
AND p.phase_zone = 'Recharge1_Resp'
AND d.pay_tool IN ('11', '12','13')
AND o.sub_trans_code IN ('0101','0103')
AND o.product_id in (
	SELECT DISTINCT	o.product_id FROM	transcore.tcs_order o WHERE	o.fund_type NOT IN ('9', '30') AND o.product_id <> '600001'
)
AND d.bank_date <= '20170803';
#持有定投计划总客户数(合计)
SELECT
  COUNT(DISTINCT tp.user_id)
FROM
	transcore.tcs_aip_order tp
WHERE
	tp.STATUS <> '0'
AND tp.product_id in (
	SELECT DISTINCT	o.product_id FROM	transcore.tcs_order o WHERE	o.fund_type NOT IN ('9', '30') AND o.product_id <> '600001'
);
#定投扣款总客户数(合计)
SELECT
  COUNT(DISTINCT o.user_id)
FROM
	transcore.tcs_order o
JOIN transcore.tcs_order_pay p ON o.id = p.order_id
JOIN transcore.tcs_order_pay_detail d ON p.id = d.order_pay_id
AND p.latest_status = 'S'
AND p.phase_zone = 'Recharge1_Resp'
AND d.pay_tool IN ('11', '12','13')
AND o.sub_trans_code = '1201'
AND o.product_id in (
	SELECT DISTINCT	o.product_id FROM	transcore.tcs_order o WHERE	o.fund_type NOT IN ('9', '30') AND o.product_id <> '600001'
)
AND d.bank_date <= '20170803';
#保有资产总客户数(合计)
SELECT
	COUNT(DISTINCT fb.asset_acct_id) AS 'count'
FROM
	merchant.mht_user_fund_quty_balance fb
WHERE
	fb.quty_balance > 0
AND (fb.quty_status IS NULL OR fb.quty_status != 'D')
AND fb.product_id in (
	SELECT DISTINCT	o.product_id FROM	transcore.tcs_order o WHERE	o.fund_type NOT IN ('9', '30') AND o.product_id <> '600001'
);
#当日申购交易客户数(合计)
SELECT
  COUNT(DISTINCT o.user_id)
FROM
	transcore.tcs_order o
JOIN transcore.tcs_order_pay p ON o.id = p.order_id
JOIN transcore.tcs_order_pay_detail d ON p.id = d.order_pay_id
AND p.latest_status = 'S'
AND p.phase_zone = 'Recharge1_Resp'
AND d.pay_tool IN ('11', '12','13')
AND o.sub_trans_code IN ('0101','0103')
AND o.product_id in (
	SELECT DISTINCT	o.product_id FROM	transcore.tcs_order o WHERE	o.fund_type NOT IN ('9', '30') AND o.product_id <> '600001'
)
AND d.bank_date = '20170803';
#当日定投扣款客户数(合计)
SELECT
  COUNT(DISTINCT o.user_id)
FROM
	transcore.tcs_order o
JOIN transcore.tcs_order_pay p ON o.id = p.order_id
JOIN transcore.tcs_order_pay_detail d ON p.id = d.order_pay_id
AND p.latest_status = 'S'
AND p.phase_zone = 'Recharge1_Resp'
AND d.pay_tool IN ('11', '12','13')
AND o.sub_trans_code = '1201'
AND o.product_id in (
	SELECT DISTINCT	o.product_id FROM	transcore.tcs_order o WHERE	o.fund_type NOT IN ('9', '30') AND o.product_id <> '600001'
)
AND d.bank_date = '20170803';
#当日赎回客户数(合计)
SELECT
  COUNT(DISTINCT o.user_id) 
FROM
	transcore.tcs_order o
WHERE o.sub_trans_code IN ('0301','0302','0302')
AND o.product_id in (
	SELECT DISTINCT	o.product_id FROM	transcore.tcs_order o WHERE	o.fund_type NOT IN ('9', '30') AND o.product_id <> '600001'
)
AND o.latest_status <> 'C'
AND o.trans_flag <> 'C'
AND o.apply_date = '20170803';