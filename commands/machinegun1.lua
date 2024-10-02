execute as @a[hasitem={item=minecraft:stone_hoe,location=slot.weapon.mainhand},tag=t:sneaking,tag=!shifton,scores={inmachineammo=80..,machineammo=..0}] at @s run tag @s add smreload
execute as @a[hasitem={item=minecraft:stone_hoe,location=slot.weapon.mainhand},tag=t:sneaking,tag=!shifton,tag=smreload,scores={inmachineammo=80..,machineammo=..0}] at @s scoreboard players remove inmachineammo 80
execute as @a[tag=smreload] at @s run scoreboard players add @s machinereload 1
execute as @a[tag=smreload,scores={machinereload=1..59}] at @s run effect @s slowness 1 1 true
execute as @a[,tag=smreload,scores={machinereload=1}] at @s run playsound reload ~~~ @a[r=5] 1 1 0
execute as @a[tag=smreload,scores={machinereload=60..}] at @s run scoreboard players set @s machineammo 80
execute as @a[tag=smreload,scores={machinereload=60..}] at @s run effect @s slowness 0 2 true
execute as @a[tag=smreload,scores={machinereload=60..}] at @s run stopsound @s reload
execute as @a[tag=smreload,scores={machinereload=60..}] at @s run tag @s remove smreload
execute as @a[scores={machinereload=60..}] at @s run scoreboard players set @s machinereload 0
execute as @a[hasitem={item=minecraft:stone_hoe,location=slot.weapon.mainhand},tag=t:sneaking,scores={machineammo=1..,machine_ct=0}] at @s run summon boat ^^^1.1 facing ^^^2
execute as @a[hasitem={item=minecraft:stone_hoe,location=slot.weapon.mainhand},tag=t:sneaking,scores={machineammo=1..,machine_ct=0}] at @s run tag @e[type=boat,r=1.5] add machinegun
execute as @a[hasitem={item=minecraft:stone_hoe,location=slot.weapon.mainhand},tag=t:sneaking,scores={machineammo=1..,machine_ct=0}] at @s run scoreboard players set @e[type=boat,r=1.5,tag=machinegun] machine_life 26
execute as @a[hasitem={item=minecraft:stone_hoe,location=slot.weapon.mainhand},tag=t:sneaking,scores={machineammo=1..,machine_ct=0}] at @s run execute as @e[type=boat,r=1.5,tag=machinegun] at @s run tp @s ~~1000~
execute as @a[hasitem={item=minecraft:stone_hoe,location=slot.weapon.mainhand},tag=t:sneaking,scores={machineammo=1..,machine_ct=0}] at @s run playsound pistol ~~~ @a[r=15] 1 1.3 0
execute as @a[hasitem={item=minecraft:stone_hoe,location=slot.weapon.mainhand},tag=t:sneaking,scores={machineammo=1..,machine_ct=0}] at @s run scoreboard players remove machineammo 1
execute as @a[hasitem={item=minecraft:stone_hoe,location=slot.weapon.mainhand},tag=t:sneaking,scores={machineammo=1..,machine_ct=0}] at @s run scoreboard players set machine_ct 3







