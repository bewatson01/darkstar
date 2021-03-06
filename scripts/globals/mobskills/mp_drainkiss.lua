---------------------------------------------
-- MP Drainkiss
-- Deals dark damage to a single target. Additional effect: Aspir
-- Type: Magical
-- Utsusemi/Blink absorb: 1 shadow
-- Range: Melee
-- Notes: If used against undead, it will simply do damage and not drain MP.
---------------------------------------------
require("scripts/globals/monstertpmoves")
require("scripts/globals/settings")
require("scripts/globals/status")
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0
end

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 1
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*1.6,dsp.magic.ele.DARK,dmgmod,TP_MAB_BONUS,1)
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_1_SHADOW)

    skill:setMsg(MobPhysicalDrainMove(mob, target, skill, MOBDRAIN_MP, dmg))

    return dmg
end
