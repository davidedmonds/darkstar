---------------------------------------------------
-- Heavenly Strike
-- Shiva deals ice damage to target.
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)

	local dmgmod = 2.7;
	local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg(),ELE_ICE,dmgmod,TP_MAB_BONUS,1);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_ICE,MOBPARAM_WIPE_SHADOWS);
	target:delHP(dmg);
	return dmg;

end