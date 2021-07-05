# Stores a custom amount of XP into capsules as defined by what the player enters to store

# Refresh player xp amount before running
execute store result score @s cxpcv1oxpa run data get entity @s XpTotal

execute if entity @s[scores={cxpcv1oxpco=100..}] run function classyelm_xp_capsules:capsule/store_xp_100
execute if entity @s[scores={cxpcv1oxpco=100..}] run scoreboard players remove @s cxpcv1oxpco 100
execute if entity @s[scores={cxpcv1oxpco=100..}] run function classyelm_xp_capsules:capsule/store_xp_custom
execute if entity @s[scores={cxpcv1oxpco=50..}] run function classyelm_xp_capsules:capsule/store_xp_50
execute if entity @s[scores={cxpcv1oxpco=50..}] run scoreboard players remove @s cxpcv1oxpco 50
execute if entity @s[scores={cxpcv1oxpco=50..}] run function classyelm_xp_capsules:capsule/store_xp_custom
execute if entity @s[scores={cxpcv1oxpco=20..}] run function classyelm_xp_capsules:capsule/store_xp_20
execute if entity @s[scores={cxpcv1oxpco=20..}] run scoreboard players remove @s cxpcv1oxpco 20
execute if entity @s[scores={cxpcv1oxpco=20..}] run function classyelm_xp_capsules:capsule/store_xp_custom
execute if entity @s[scores={cxpcv1oxpco=10..}] run function classyelm_xp_capsules:capsule/store_xp_10
execute if entity @s[scores={cxpcv1oxpco=10..}] run scoreboard players remove @s cxpcv1oxpco 10
execute if entity @s[scores={cxpcv1oxpco=10..}] run function classyelm_xp_capsules:capsule/store_xp_custom
execute if entity @s[scores={cxpcv1oxpco=5..}] run function classyelm_xp_capsules:capsule/store_xp_5
execute if entity @s[scores={cxpcv1oxpco=5..}] run scoreboard players remove @s cxpcv1oxpco 5
execute if entity @s[scores={cxpcv1oxpco=5..}] run function classyelm_xp_capsules:capsule/store_xp_custom
execute if entity @s[scores={cxpcv1oxpco=1..}] run function classyelm_xp_capsules:capsule/store_xp_1
execute if entity @s[scores={cxpcv1oxpco=1..}] run scoreboard players remove @s cxpcv1oxpco 1
execute if entity @s[scores={cxpcv1oxpco=1..}] run function classyelm_xp_capsules:capsule/store_xp_custom