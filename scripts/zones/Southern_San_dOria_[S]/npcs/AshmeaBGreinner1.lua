-----------------------------------
-- Area: Southern SandOria [S]
--  NPC: Ashmea B Greinner
-- !pos 2 2 -81 80
-----------------------------------
package.loaded["scripts/zones/Southern_San_dOria_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Southern_San_dOria_[S]/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:showText(npc, 11690); -- How dare a baseborn peasant raise [his/her] voice to a noble knight!? Begone, before I strike you down myself!
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;