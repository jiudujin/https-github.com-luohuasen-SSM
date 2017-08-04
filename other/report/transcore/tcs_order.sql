SELECT * FROM transcore.tcs_order o WHERE o.apply_date = "20170630";
SELECT * FROM transcore.tcs_order_pay p;
SELECT
            sum(o.amount / 100)
        FROM	transcore.tcs_order o
        INNER JOIN transcore.tcs_order_pay p ON p.order_id = o.id
        WHERE	p.latest_status = 'S'
        AND o.sub_trans_code IN ('0101','0103','0201','0202','1201')
        AND o.apply_date = "20170630";

