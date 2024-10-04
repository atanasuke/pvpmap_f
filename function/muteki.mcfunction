execute as @a[tag=!resist_all_damage,scores={muteki=1..}] at @s run tag @s add resist_all_damage
execute as @a[tag=resist_all_damage,scores={muteki=1..}] at @s run scoreboard players remove @s muteki 1
execute as @a[tag=resist_all_damage,scores={muteki=0}] at @s run tag @s remove resist_all_damage