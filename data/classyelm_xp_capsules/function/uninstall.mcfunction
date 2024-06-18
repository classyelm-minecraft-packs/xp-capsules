# Deletes all objectives & disables datapack
scoreboard objectives remove cxpcv1oxpa
scoreboard objectives remove cxpcv1ous
scoreboard objectives remove StoreXP
scoreboard objectives remove cxpcv1oxpco

datapack disable "file/classyelm-xp-capsules"
datapack disable "file/classyelm-xp-capsules-v1.3.zip"

tellraw @a [{"text":"Successfully uninstalled the XP Capsules Datapack. If you uninstalled this in error, run '/datapack enable <datapack>' to reload the datapack.","color":"yellow"}]