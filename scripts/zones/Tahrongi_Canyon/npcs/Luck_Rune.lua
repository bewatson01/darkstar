-----------------------------------
-- Area: Tahrongi Canyon
--  NPC: Luck Rune
--  Involved in Quest: Mhaura Fortune
-- !pos -54.755 7.647 -379.945 117
-----------------------------------
package.loaded["scripts/zones/Tahrongi_Canyon/TextIDs"] = nil;
-------------------------------------
require("scripts/zones/Tahrongi_Canyon/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:messageSpecial(NOTHING_OUT_OF_THE_ORDINARY);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;