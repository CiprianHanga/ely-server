INSERT INTO `migrations` VALUES ('20170630201907'); 

-- Add gossip menu for Mankrik
DELETE FROM `npc_gossip` WHERE `npc_guid`=14348;
INSERT INTO `conditions` VALUES (941, 8, 899, 0);
INSERT INTO `conditions` VALUES (942, 8, 4921, 0);
INSERT INTO `conditions` VALUES (943, -1, 942, 941);
INSERT INTO `gossip_menu` VALUES (2861, 3553, 0);
INSERT INTO `gossip_menu` VALUES (2861, 3554, 943);
UPDATE `creature_template` SET `gossip_menu_id`=2861 WHERE `entry`=3432;

-- Add missing gossip text for Mebok Myzzyrix
INSERT INTO `npc_text` VALUES (224,'Yes yes yes! You\'re just the $c I\'m looking for!\r\n\r\nSit! We have much to discuss!!','',0,1,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0);
INSERT INTO `npc_gossip` VALUES (14408, 224);

-- Add gossip menu for Gorbold Steelhand
DELETE FROM `npc_text` WHERE `ID`=17861;
DELETE FROM `npc_gossip` WHERE `npc_guid`=37980;
INSERT INTO `gossip_menu` VALUES (12726, 3218, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES (12726, 0, 1, 'I want to browse your goods.', 3, 4, 0, 0, 0, 0, 0, NULL, 0);
UPDATE `creature_template` SET `gossip_menu_id`=12726 WHERE `entry`=6301;

-- Add gossip menu for Mangletooth
DELETE FROM `npc_gossip` WHERE `npc_guid`=14345;
INSERT INTO `conditions` VALUES (324, 8, 5052, 0);
INSERT INTO `gossip_menu` VALUES (2944, 3656, 0);
INSERT INTO `gossip_menu` VALUES (2944, 3670, 324);
UPDATE `creature_template` SET `gossip_menu_id`=2944 WHERE `entry`=3430;

-- Add gossip menu for Melnan Darkstone
INSERT INTO `gossip_menu` VALUES (6213, 7375, 0);
INSERT INTO `gossip_menu` VALUES (6222, 7379, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES (6213, 0, 0, 'The Darkmoon Faire has arrived, you say? And where is she now?', 1, 1, 6222, 0, 0, 0, 0, NULL, 0);
UPDATE `creature_template` SET `gossip_menu_id`=6213, `npcflag`=3 WHERE `entry`=14842;
