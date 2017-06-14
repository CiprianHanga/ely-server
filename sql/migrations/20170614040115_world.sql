INSERT INTO `migrations` VALUES ('20170614040115'); 

-- Add missing npc Nazgrel.
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `spawnFlags`) VALUES (95008, 3230, 1, 1872, 0, 1938.86, -4133.06, 40.9159, 3.90734, 7200, 0, 0, 4079, 0, 0, 0, 0);
UPDATE `creature_involvedrelation` SET `id`=3230 WHERE `quest`=831;