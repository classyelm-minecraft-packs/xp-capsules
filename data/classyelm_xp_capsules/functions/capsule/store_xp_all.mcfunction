# Stores all player's XP into capsules using function recursion

# Refresh player xp amount before running
execute store result score @s cxpcv1oxpa run data get entity @s XpTotal

execute if entity @s[scores={cxpcv1oxpa=100..}] run function classyelm_xp_capsules:capsule/store_xp_100
execute if entity @s[scores={cxpcv1oxpa=100..}] run function classyelm_xp_capsules:capsule/store_xp_all
execute if entity @s[scores={cxpcv1oxpa=50..}] run function classyelm_xp_capsules:capsule/store_xp_50
execute if entity @s[scores={cxpcv1oxpa=50..}] run function classyelm_xp_capsules:capsule/store_xp_all
execute if entity @s[scores={cxpcv1oxpa=20..}] run function classyelm_xp_capsules:capsule/store_xp_20
execute if entity @s[scores={cxpcv1oxpa=20..}] run function classyelm_xp_capsules:capsule/store_xp_all
execute if entity @s[scores={cxpcv1oxpa=10..}] run function classyelm_xp_capsules:capsule/store_xp_10
execute if entity @s[scores={cxpcv1oxpa=10..}] run function classyelm_xp_capsules:capsule/store_xp_all
execute if entity @s[scores={cxpcv1oxpa=5..}] run function classyelm_xp_capsules:capsule/store_xp_5
execute if entity @s[scores={cxpcv1oxpa=5..}] run function classyelm_xp_capsules:capsule/store_xp_all
execute if entity @s[scores={cxpcv1oxpa=1..}] run function classyelm_xp_capsules:capsule/store_xp_1
execute if entity @s[scores={cxpcv1oxpa=1..}] run function classyelm_xp_capsules:capsule/store_xp_all