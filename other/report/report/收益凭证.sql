#收益凭证
SELECT	DISTINCT p.id, p.fund_name AS 'code' FROM	product.pcs_product p JOIN product.pcs_product_busi_control c ON p.id = c.product_id AND	p.fund_type = '9' AND c.busi_detail = '9903' AND c.memo >= '20170803';
SELECT	DISTINCT p.id AS 'code' FROM	product.pcs_product p JOIN product.pcs_product_busi_control c ON p.id = c.product_id AND	p.fund_type = '9' AND c.busi_detail = '9903' AND c.memo >= '20170803';


COMMIT;
SELECT * FROM report_resource_column c WHERE c.sheet_id = 6 AND c.querySql NOT IN ('NONE', 'SUM');

SELECT
	t.id,
  t.fund_name,
	DATE_FORMAT(t.fund_sale_time,'%Y%m%d') AS '起售日'
FROM
	product.pcs_product t
WHERE
	t.id IN (600275,600284,600286,600287,600291,600307,600308,600309,600310,600311,600312,600314,600315,600316);

SELECT
	t.product_id AS 'code',
  DATE_FORMAT(t.memo,'%Y%m%d') AS '起息日'
FROM
  product.pcs_product_busi_control t
WHERE t.product_id IN (600275,600284,600286,600287,600291,600307,600308,600309,600310,600311,600312,600314,600315,600316)
AND t.busi_detail = '9901';

SELECT
	t.product_id AS 'code',
  DATE_FORMAT(t.memo,'%Y%m%d') AS '到期日'
FROM
  product.pcs_product_busi_control t
WHERE t.product_id IN (600275,600284,600286,600287,600291,600307,600308,600309,600310,600311,600312,600314,600315,600316)
AND t.busi_detail = '9902';

SELECT
	t.product_id AS 'code',
  DATE_FORMAT(t.memo,'%Y%m%d') AS '兑付日'
FROM
  product.pcs_product_busi_control t
WHERE t.product_id IN (600275,600284,600286,600287,600291,600307,600308,600309,600310,600311,600312,600314,600315,600316)
AND t.busi_detail = '9903';

## 认购交易总客户数
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
AND o.sub_trans_code IN ('0201','0202')
AND o.product_id in (600275,600284,600286,600287,600291,600307,600308,600309,600310,600311,600312,600314,600315,600316)
AND d.bank_date <= '20170803'
GROUP BY o.product_id;

##当日认购交易客户数
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
AND d.pay_tool IN ('11', '12', '13')
AND o.sub_trans_code IN ('0201','0202')
AND o.product_id in (600275,600284,600286,600287,600291,600307,600308,600309,600310,600311,600312,600314,600315,600316)
AND d.bank_date = '20170803'
GROUP BY o.product_id;

##认购交易总金额
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
AND o.sub_trans_code IN ('0201','0202')
AND o.product_id in (600275,600284,600286,600287,600291,600307,600308,600309,600310,600311,600312,600314,600315,600316)
AND d.bank_date <= '20170803'
GROUP BY o.product_id;

#总保有金额
SELECT
	fb.product_id AS 'code', SUM(fb.quty_balance * p.nav / 100) AS 'num',p.fund_name
FROM
	merchant.mht_user_fund_quty_balance fb JOIN ( SELECT id, IFNULL(nav, '1') AS nav , p.fund_name FROM product.pcs_product p ) p ON fb.product_id = p.id
AND	fb.quty_balance > 0
AND (fb.quty_status IS NULL OR fb.quty_status != 'D')
AND fb.product_id in (600275,600284,600286,600287,600291,600307,600308,600309,600310,600311,600312,600314,600315,600316)
GROUP BY fb.product_id;

##当日认购交易金额

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
AND o.sub_trans_code IN ('0201','0202')
AND o.product_id in (600275,600284,600286,600287,600291,600307,600308,600309,600310,600311,600312,600314,600315,600316)
AND d.bank_date = '20170803'
GROUP BY o.product_id;


##  SUM 认购交易总客户数
SELECT
  COUNT(DISTINCT o.user_id) AS 'num'
FROM
	transcore.tcs_order o
JOIN transcore.tcs_order_pay p ON o.id = p.order_id
JOIN transcore.tcs_order_pay_detail d ON p.id = d.order_pay_id
AND p.latest_status = 'S'
AND p.phase_zone = 'Recharge1_Resp'
AND d.pay_tool IN ('11', '12','13')
AND o.sub_trans_code IN ('0201','0202')
AND o.product_id in (600275,600284,600286,600287,600291,600307,600308,600309,600310,600311,600312,600314,600315,600316)
AND d.bank_date <= '20170803';