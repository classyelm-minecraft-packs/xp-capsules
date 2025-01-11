# Initializes all necessary data for the datapack
scoreboard objectives add cxpcv1oxpa dummy
scoreboard objectives add cxpcv1ous minecraft.used:minecraft.snowball
scoreboard objectives add StoreXP trigger
scoreboard players set #NEGATIVE_ONE StoreXP -1
scoreboard objectives add cxpcv1oxpco dummy

tellraw @a {text:"Successfully loaded XP Capsules Datapack",color:"yellow"}

# Naming Definitions
# cxpcv1... - ClassyElm XP Currency Version 1
## o... - Objectives
### xpa - XP Amount (individual players' xp amounts)
### us - Use Snowball
### StoreXP - Positive numbers display xp storage prompt, negative store a specified amount of xp (or all, which is -2147483648)
### xpco - XP Comparison Objective (used in comparing xpa with negative StoreXP objective value)
## i... - Item Tags
### xpc - XP Capsule (boolean value)
### xpa - XP Amount : (number of xp points)
## t... - Entity Tags
### scxp - Store Custom XP (from player levels)
### xpo - XP Orb (dropped to nearest player or from snowball if no one is near)