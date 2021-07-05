# Grants users the ability to store XP into capsules

# Enable players to use trigger objective
scoreboard players enable @a StoreXP

# Stores xp point amounts in scoreboard objectives
execute store result score @s cxpcv1oxpa run data get entity @s XpTotal

# Displays prompt to store xp
execute if entity @s[scores={StoreXP=1..}] run function classyelm_xp_capsules:capsule/display_storing

# Store player XP into capsules when player StoreXP score indicates storing
execute if entity @s[scores={StoreXP=..-1}] run function classyelm_xp_capsules:capsule/store_xp