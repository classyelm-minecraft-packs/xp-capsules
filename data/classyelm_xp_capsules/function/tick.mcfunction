# Main execution point for xp currency datapack

# Add respective XP points if XP capsule is used
execute as @e[type=minecraft:snowball,nbt={Item:{components:{"minecraft:custom_data":{cxpcv1ixpc:1}}}}] at @s run function classyelm_xp_capsules:capsule/extract

# Give players ability to store their XP into capsules
execute as @a run function classyelm_xp_capsules:capsule/tick

# Reset Snowball Use objective
scoreboard players set @a[scores={cxpcv1ous=1..}] cxpcv1ous 0