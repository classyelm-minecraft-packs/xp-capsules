# Processes the amount of XP that needs to be given on a player thrown capsule (snowball)
summon minecraft:experience_orb ~ ~ ~ {Tags:["cxpcv1txpo"]}
execute store result entity @e[type=minecraft:experience_orb,tag=cxpcv1txpo,sort=nearest,limit=1] Value int 1 run data get entity @s Item.components."minecraft:custom_data".cxpcv1ixpa
tag @e[type=minecraft:experience_orb,tag=cxpcv1txpo,sort=nearest,limit=1] remove cxpcv1txpo
kill @s