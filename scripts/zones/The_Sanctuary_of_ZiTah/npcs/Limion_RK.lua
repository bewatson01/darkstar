-----------------------------------
-- Area: The Sanctuary of Zi'Tah
--  NPC: Limion, R.K.
-- Border Conquest Guards
-- !pos -252.454 -1.958 624.366 121
-----------------------------------
package.loaded["scripts/zones/The_Sanctuary_of_ZiTah/TextIDs"] = nil
-----------------------------------
require("scripts/zones/The_Sanctuary_of_ZiTah/TextIDs")
require("scripts/globals/conquest")
-----------------------------------

local guardNation = dsp.nation.SANDORIA
local guardType   = dsp.conq.guard.BORDER
local guardRegion = dsp.region.LITELOR
local guardEvent  = 32762

function onTrade(player,npc,trade)
    dsp.conq.overseerOnTrade(player, npc, trade, guardNation, guardType)
end

function onTrigger(player,npc)
    dsp.conq.overseerOnTrigger(player, npc, guardNation, guardType, guardEvent, guardRegion)
end

function onEventUpdate(player,csid,option)
    dsp.conq.overseerOnEventUpdate(player, csid, option, guardNation)
end

function onEventFinish(player,csid,option)
    dsp.conq.overseerOnEventFinish(player, csid, option, guardNation, guardType, guardRegion)
end