SELECT d.asset_acct_id,d.ta_no,t.* 
FROM mht_ta_trade_ack t,mht_ta_user_account d
WHERE t.app_no = '00ef9c1f80067b1ca9000019' 
AND t.batch_no = '00ef9c1f80067b1ca900001a' 
AND t.trade_acct = d.trade_acct 
AND t.ta_no = d.ta_no