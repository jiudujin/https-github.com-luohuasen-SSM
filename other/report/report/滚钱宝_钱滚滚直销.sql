SELECT CONCAT('#',c.column_name), c.querySql FROM report_resource_column c WHERE c.sheet_id = 3 AND c.querySql NOT IN ('NONE', 'SUM');


#申购交易总客户数	
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
AND o.product_id = '600001'
AND d.bank_date <= '20170803';
#持有定投计划总客户数	
SELECT
	count(DISTINCT t.user_id)
FROM
	transcore.tcs_aip_order t
INNER JOIN transcore.tcs_tran_plan p ON t.protocol_id = p.ref_3th_id
WHERE
	p.play_type = 'A'
AND p.latest_status = 'Y'
AND t.product_id = 600001;
#定投扣款总客户数	
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
AND o.product_id = '600001'
#保有资产总客户数	
SELECT
	COUNT(DISTINCT fb.asset_acct_id) AS num
FROM
	merchant.mht_user_fund_quty_balance fb
WHERE	fb.quty_balance > 0
AND (fb.quty_status IS NULL OR fb.quty_status != 'D')
AND fb.product_id = '600001';
#当日申购交易客户数	
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
AND o.product_id = '600001'
AND d.bank_date = '20170803';
#当日定投扣款客户数	
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
AND o.product_id = '600001'
AND d.bank_date = '20170803';
#当日赎回客户数	
SELECT
	COUNT(DISTINCT o.user_id)
FROM
	transcore.tcs_order o
WHERE o.sub_trans_code IN ('0301','0302','0302')
AND o.product_id = '600001'
AND o.latest_status <> 'C'
AND o.trans_flag <> 'C'
AND o.apply_date = '20170803';
#申购交易总金额	
SELECT
	SUM(o.amount)
FROM
	transcore.tcs_order o
JOIN transcore.tcs_order_pay p ON o.id = p.order_id
JOIN transcore.tcs_order_pay_detail d ON p.id = d.order_pay_id
AND p.latest_status = 'S'
AND p.phase_zone = 'Recharge1_Resp'
AND d.pay_tool IN ('11', '12','13')
AND o.sub_trans_code IN ('0101','0103')
AND o.product_id = '600001'
#定投扣款总金额	
SELECT
	SUM(o.amount)
FROM
	transcore.tcs_order o
JOIN transcore.tcs_order_pay p ON o.id = p.order_id
JOIN transcore.tcs_order_pay_detail d ON p.id = d.order_pay_id
AND p.latest_status = 'S'
AND p.phase_zone = 'Recharge1_Resp'
AND d.pay_tool IN ('11', '12','13')
AND o.sub_trans_code = '1201'
AND o.product_id = '600001'
AND d.bank_date = '20170803';
#保有资产总份额	
SELECT
	SUM(fb.quty_balance / 100)
FROM
	merchant.mht_user_fund_quty_balance fb
WHERE
	fb.quty_balance > 0
AND (fb.quty_status IS NULL OR fb.quty_status != 'D')
AND fb.product_id = '600001';
#当日申购交易金额	
SELECT
	SUM(o.amount)
FROM
	transcore.tcs_order o
JOIN transcore.tcs_order_pay p ON o.id = p.order_id
JOIN transcore.tcs_order_pay_detail d ON p.id = d.order_pay_id
AND p.latest_status = 'S'
AND p.phase_zone = 'Recharge1_Resp'
AND d.pay_tool IN ('11', '12','13')
AND o.sub_trans_code IN ('0101','0103')
AND o.product_id = '600001'
AND d.bank_date = '20170803';
#当日定投扣款金额	
SELECT
	SUM(o.amount)
FROM
	transcore.tcs_order o
JOIN transcore.tcs_order_pay p ON o.id = p.order_id
JOIN transcore.tcs_order_pay_detail d ON p.id = d.order_pay_id
AND p.latest_status = 'S'
AND p.phase_zone = 'Recharge1_Resp'
AND d.pay_tool IN ('11', '12','13')
AND o.sub_trans_code = '1201'
AND o.product_id = '600001'
AND d.bank_date = '20170803';
#当日赎回交易金额	
SELECT
	SUM(o.amount)
FROM
	transcore.tcs_order o
WHERE o.sub_trans_code IN ('0301','0302','0302')
AND o.product_id = '600001'
AND o.latest_status <> 'C'
AND o.trans_flag <> 'C'
AND o.apply_date = '20170803';
