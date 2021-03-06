-----------------------------------
-- Area: Valkurm Dunes
--  NPC: Fighting Ant, I.M.
-- Border Conquest Guards
-- !pos 908.245 -1.171 -411.504 103
-----------------------------------
package.loaded["scripts/zones/Valkurm_Dunes/TextIDs"] = nil
-----------------------------------
require("scripts/zones/Valkurm_Dunes/TextIDs")
require("scripts/globals/conquest")
-----------------------------------

local guardNation = dsp.nation.BASTOK
local guardType   = dsp.conq.guard.BORDER
local guardRegion = dsp.region.ZULKHEIM
local guardEvent  = 32760

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