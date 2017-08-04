##获取导入导出的参数
SELECT map_type,key_name,table_column_name,column_type FROM mht_map_import_export_entry_param t WHERE t.map_type = 'RTTA_TRADE_APP';