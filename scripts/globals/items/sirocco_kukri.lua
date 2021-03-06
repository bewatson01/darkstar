-----------------------------------------
-- ID: 18018
-- Item: Sirocco Kukri
-- Additional Effect: Wind Damage
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------

function onAdditionalEffect(player,target,damage)
    local dmg = math.random(3,10)
    local params = {}
    params.bonusmab = 0
    params.includemab = false
    dmg = addBonusesAbility(player, dsp.magic.ele.WIND, target, dmg, params)
    dmg = dmg * applyResistanceAddEffect(player,target,dsp.magic.ele.WIND,0)
    dmg = adjustForTarget(target,dmg,dsp.magic.ele.WIND)
    dmg = finalMagicNonSpellAdjustments(player,target,dsp.magic.ele.WIND,dmg)

    local message = dsp.msg.basic.ADD_EFFECT_DMG
    if (dmg < 0) then
        message = dsp.msg.basic.ADD_EFFECT_HEAL
    end

    return dsp.subEffect.WIND_DAMAGE,message,dmg
end