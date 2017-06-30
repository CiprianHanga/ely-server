INSERT INTO `migrations` VALUES ('20170630160000');

-- Fix spell on Plans: Dawnbringer Shoulders
UPDATE `item_template` SET `spellid_1` = 16686, `spellid_2` = 0 WHERE `entry` = 12698;
