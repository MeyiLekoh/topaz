-----------------------------------------
-- ID: 5562
-- Item: pot_of_white_honey
-- Food Effect: 5Min, All Races
-----------------------------------------
-- Magic Regen While Healing 1
-----------------------------------------
require("scripts/globals/status")
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if target:hasStatusEffect(dsp.effect.FOOD) or target:hasStatusEffect(dsp.effect.FIELD_SUPPORT_FOOD) then
        result = 246
    end
    return result
end

function onItemUse(target)
    target:addStatusEffect(dsp.effect.FOOD,0,0,300,5562)
end

function onEffectGain(target, effect)
    target:addMod(dsp.mod.MPHEAL, 1)
end

function onEffectLose(target, effect)
    target:delMod(dsp.mod.MPHEAL, 1)
end
