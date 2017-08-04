INSERT INTO cell (`code`, `value`) VALUES ('121', '6');
INSERT INTO cell (`code`, `value`) VALUES ('127', '720');
INSERT INTO cell (`code`, `value`) VALUES ('301', '1077');
INSERT INTO cell (`code`, `value`) VALUES ('302', '3027');
INSERT INTO cell (`code`, `value`) VALUES ('303', '199044');
INSERT INTO cell (`code`, `value`) VALUES ('304', '28097');
INSERT INTO cell (`code`, `value`) VALUES ('305', '1195230');
INSERT INTO cell (`code`, `value`) VALUES ('306', '557');
INSERT INTO cell (`code`, `value`) VALUES ('307', '4292');
INSERT INTO cell (`code`, `value`) VALUES ('308', '176');
INSERT INTO cell (`code`, `value`) VALUES ('309', '88');
INSERT INTO cell (`code`, `value`) VALUES ('315', '28');
INSERT INTO cell (`code`, `value`) VALUES ('338', '6');
INSERT INTO cell (`code`, `value`) VALUES ('339', '4');
INSERT INTO cell (`code`, `value`) VALUES ('348', '9');
INSERT INTO cell (`code`, `value`) VALUES ('352', '2');
INSERT INTO cell (`code`, `value`) VALUES ('356', '184');
INSERT INTO cell (`code`, `value`) VALUES ('376', '37956');
INSERT INTO cell (`code`, `value`) VALUES ('378', '7590');
INSERT INTO cell (`code`, `value`) VALUES ('382', '9');
INSERT INTO cell (`code`, `value`) VALUES ('394', '238');
INSERT INTO cell (`code`, `value`) VALUES ('918', '1547');






TRUNCATE cell;
SELECT i.`name`, c.`value` FROM  report.report_resource_column_index i LEFT JOIN test.cell c ON i.`code` = c.`code`
