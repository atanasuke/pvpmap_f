execute as @a[hasitem={item=minecraft:wooden_shovel,location=slot.weapon.mainhand},tag=t:sneaking,tag=!shifton,scores={inbattleammo=2..,battleammo=..0}] at @s run tag @s add sbreload
execute as @a[hasitem={item=minecraft:wooden_shovel,location=slot.weapon.mainhand},tag=t:sneaking,tag=!shifton,tag=sbreload,scores={inbattleammo=2..,battleammo=..0}] at @s scoreboard players remove @s inbattleammo 2
execute as @a[tag=sbreload] at @s run scoreboard players add @s battlereload 1
execute as @a[tag=sbreload,scores={battlereload=1..40}] at @s run effect @s slowness 1 2 true
execute as @a[tag=sbreload,scores={battlereload=1}] at @s run playsound reload ~~~ @a[r=5] 1 1 0
execute as @a[tag=sbreload,scores={battlereload=40..}] at @s run scoreboard players set @s battleammo 2
execute as @a[tag=sbreload,scores={battlereload=40..}] at @s run effect @s slowness 0 3 true
execute as @a[tag=sbreload,scores={battlereload=40..}] at @s run stopsound @s reload
execute as @a[tag=sbreload,scores={battlereload=40..}] at @s run tag @s remove sbreload
execute as @a[scores={battlereload=40..}] at @s run scoreboard players set @s battlereload 0
execute as @a[hasitem={item=minecraft:wooden_shovel,location=slot.weapon.mainhand},tag=t:sneaking,scores={battleammo=1..,battle_ct=0}] at @s run summon boat ^^^1.1 facing ^^^2
execute as @a[hasitem={item=minecraft:wooden_shovel,location=slot.weapon.mainhand},tag=t:sneaking,scores={battleammo=1..,battle_ct=0}] at @s run tag @e[type=boat,r=1.5] add battlegun
execute as @a[hasitem={item=minecraft:wooden_shovel,location=slot.weapon.mainhand},tag=t:sneaking,scores={battleammo=1..,battle_ct=0}] at @s run scoreboard players set @e[type=boat,r=1.5,tag=battlegun] battlegun_life 15
execute as @a[hasitem={item=minecraft:wooden_shovel,location=slot.weapon.mainhand},tag=t:sneaking,scores={battleammo=1..,battle_ct=0}] at @s run execute as @e[type=boat,r=1.5,tag=battlegun] at @s run tp @s ~~1000~
execute as @a[hasitem={item=minecraft:wooden_shovel,location=slot.weapon.mainhand},tag=t:sneaking,scores={battleammo=1..,battle_ct=0}] at @s run playsound pistol ~~~ @a[r=15] 0.3 0.7 0
execute as @a[hasitem={item=minecraft:wooden_shovel,location=slot.weapon.mainhand},tag=t:sneaking,scores={battleammo=1..,battle_ct=0}] at @s run scoreboard players remove @s battleammo 1
execute as @a[hasitem={item=minecraft:wooden_shovel,location=slot.weapon.mainhand},tag=t:sneaking,scores={battleammo=1..,battle_ct=0}] at @s run scoreboard players set @s battle_ct 20







