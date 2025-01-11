# Stores a given amount of XP into an xp capsule

# Store single measured unit of xp if specified
tag @s add cxpcv1tscxp
execute if entity @s[scores={StoreXP=-1,cxpcv1oxpa=1..}] run function classyelm_xp_capsules:capsule/store_xp_1
execute if entity @s[scores={StoreXP=-1}] run tag @s remove cxpcv1tscxp
execute if entity @s[scores={StoreXP=-1,cxpcv1oxpa=..0}] run tellraw @s {text:"You do not have enough XP to store.",color:"yellow"}
execute if entity @s[scores={StoreXP=-5,cxpcv1oxpa=5..}] run function classyelm_xp_capsules:capsule/store_xp_5
execute if entity @s[scores={StoreXP=-5}] run tag @s remove cxpcv1tscxp
execute if entity @s[scores={StoreXP=-5,cxpcv1oxpa=..4}] run tellraw @s {text:"You do not have enough XP to store.",color:"yellow"}
execute if entity @s[scores={StoreXP=-10,cxpcv1oxpa=10..}] run function classyelm_xp_capsules:capsule/store_xp_10
execute if entity @s[scores={StoreXP=-10}] run tag @s remove cxpcv1tscxp
execute if entity @s[scores={StoreXP=-10,cxpcv1oxpa=..9}] run tellraw @s {text:"You do not have enough XP to store.",color:"yellow"}
execute if entity @s[scores={StoreXP=-20,cxpcv1oxpa=20..}] run function classyelm_xp_capsules:capsule/store_xp_20
execute if entity @s[scores={StoreXP=-20}] run tag @s remove cxpcv1tscxp
execute if entity @s[scores={StoreXP=-20,cxpcv1oxpa=..19}] run tellraw @s {text:"You do not have enough XP to store.",color:"yellow"}
execute if entity @s[scores={StoreXP=-50,cxpcv1oxpa=50..}] run function classyelm_xp_capsules:capsule/store_xp_50
execute if entity @s[scores={StoreXP=-50}] run tag @s remove cxpcv1tscxp
execute if entity @s[scores={StoreXP=-50,cxpcv1oxpa=..49}] run tellraw @s {text:"You do not have enough XP to store.",color:"yellow"}
execute if entity @s[scores={StoreXP=-100,cxpcv1oxpa=100..}] run function classyelm_xp_capsules:capsule/store_xp_100
execute if entity @s[scores={StoreXP=-100}] run tag @s remove cxpcv1tscxp
execute if entity @s[scores={StoreXP=-100,cxpcv1oxpa=..99}] run tellraw @s {text:"You do not have enough XP to store.",color:"yellow"}

# Store all xp if StoreXP value is specified as that
execute if entity @s[scores={StoreXP=-2147483648,cxpcv1oxpa=..0}] run tellraw @s {text:"You do not have any XP to store.",color:"yellow"}
execute if entity @s[scores={StoreXP=-2147483648,cxpcv1oxpa=..0}] run scoreboard players set @s StoreXP 0
tellraw @s[scores={StoreXP=-2147483648,cxpcv1oxpa=1..}] [{text:"Stored all ",color:"yellow"},{score:{name:"@s",objective:"cxpcv1oxpa"}},{text:" XP into capsules"}]
execute if entity @s[scores={StoreXP=-2147483648,cxpcv1oxpa=1..}] run tag @s remove cxpcv1tscxp
execute if entity @s[scores={StoreXP=-2147483648,cxpcv1oxpa=1..}] run function classyelm_xp_capsules:capsule/store_xp_all

# Store specific xp in a number of pre-valued capsules
scoreboard players operation @s cxpcv1oxpco = @s StoreXP
scoreboard players operation @s cxpcv1oxpco *= #NEGATIVE_ONE StoreXP
execute if entity @s[tag=cxpcv1tscxp,scores={StoreXP=..-1}] if score @s cxpcv1oxpa >= @s cxpcv1oxpco run tellraw @s [{text:"Stored ",color:"yellow"},{score:{name:"@s",objective:"cxpcv1oxpco"}},{text:" XP into capsules"}]
execute if entity @s[tag=cxpcv1tscxp,scores={StoreXP=..-1}] if score @s cxpcv1oxpa >= @s cxpcv1oxpco run function classyelm_xp_capsules:capsule/store_xp_custom
execute if entity @s[tag=cxpcv1tscxp,scores={StoreXP=..-1}] unless score @s cxpcv1oxpa >= @s cxpcv1oxpco run tellraw @s [{text:"You cannot store ",color:"yellow"},{score:{name:"@s",objective:"cxpcv1oxpco"}},{text:" XP because you only have "},{score:{name:"@s",objective:"cxpcv1oxpa"}},{text:" XP available."}]
tag @s remove cxpcv1tscxp

scoreboard players set @s StoreXP 0