-----------------------------------
-- Area: RuAun Gardens
--  Mob: Flamingo
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------

function onMobDeath(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 142, 1, tpz.regime.type.FIELDS)
end
