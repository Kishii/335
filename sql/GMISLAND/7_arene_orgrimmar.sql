-- Orgrimmar Arena
DELETE FROM `gameobject` WHERE `id` IN (184663, 184664, 194582, 194586, 192704, 192705, 192388, 192387, 192393, 192394, 194583, 194584, 194585, 194587, 192389, 192390/*,194580,194579,194581,194578*/);
INSERT INTO `gameobject` VALUES
-- BUFFS
('200070','184663','618','1','1','735.551819','-284.794678','28.276682','0.034906','0','0','0','0','120','100','1'),
('200071','184664','618','1','1','791.224487','-284.794464','28.276682','2.600535','0','0','0','0','120','100','1'),
-- ELEVATORS
('200072','194582','618','1','1','763.536377','-294.535767','0.505383','3.141593','0','0','0','0','120','100','1'),
('200073','194586','618','1','1','763.506348','-273.873352','0.505383','0','0','0','0','0','120','100','1'),
-- Flammes
('200074','192704','618','1','1','743.543457','-283.799469','28.286655','0','0','0','0','0','120','100','1'),
('200075','192705','618','1','1','782.971802','-283.799469','28.286655','0','0','0','0','0','120','100','1'),
('200076','192388','618','1','1','743.711060','-284.099609','27.542587','3.141593','0','0','0','0','120','100','1'),
('200077','192387','618','1','1','783.221252','-284.133362','27.535686','0','0','0','0','0','120','100','1'),
-- GEARS
('200078','192393','618','1','1','763.664551','-261.872986','26.686588','0','0','0','0','0','120','100','1'),
('200079','192394','618','1','1','763.578979','-306.146149','26.665222','3.141593','0','0','0','0','120','100','1'),
-- PILLARS
('200080','194583','618','1','1','763.632385','-306.162384','25.909504','3.141593','0','0','0','0','120','100','1'),
('200081','194584','618','1','1','723.644287','-284.493256','24.648525','3.141593','0','0','0','0','120','100','1'),
('200082','194585','618','1','1','763.611145','-261.856750','25.909504','0','0','0','0','0','120','100','1'),
('200083','194587','618','1','1','802.211609','-284.493256','24.648525','0','0','0','0','0','120','100','1'),
-- PULLEY
('200088','192389','618','1','1','700.722290','-283.990662','39.517582','3.141593','0','0','0','0','120','100','1'),
('200089','192390','618','1','1','826.303833','-283.996429','39.517582','0','0','0','0','0','120','100','1')

-- pillars collision (not work - should make you break LoS)
('200084','194580','618','1','1','763.632385','-306.162384','30.639660','3.141593','0','0','0','0','120','100','1'),
('200085','194579','618','1','1','723.644287','-284.493256','32.382710','0','0','0','0','0','120','100','1'),
('200086','194581','618','1','1','763.611145','-261.856750','30.639660','0','0','0','0','0','120','100','1'),
('200087','194578','618','1','1','802.211609','-284.493256','32.382710','3.141593','0','0','0','0','120','100','1');

DELETE FROM `gameobject_battleground` WHERE `guid` IN (200070, 200071, 200072, 200073);
INSERT INTO `gameobject_battleground` VALUES
-- BUFFS
('200070','252','0'),
('200071','252','0'),
-- ELEVATORS
('200072','254','0'),
('200073','254','0');

DELETE FROM `battleground_events` WHERE `map` = 618;
INSERT INTO `battleground_events` VALUES
('618','252','0','buffs'),
('618','254','0','doors');

UPDATE `gameobject_template` SET `faction` = 114, `flags` = 32 WHERE `entry` IN (192704, 192705, 192388, 192387, 192393, 192394, 192389, 192390);