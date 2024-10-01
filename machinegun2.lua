execute as @a[hasitem={item=minecraft:iron_hoe,location=slot.weapon.mainhand},tag=t:sneaking,tag=!shifton,scores={ingatlingammo=200..,gatlingammo=..0,gat_cha=..0}] at @s run tag @s add sgreload
execute as @a[hasitem={item=minecraft:iron_hoe,location=slot.weapon.mainhand},tag=t:sneaking,tag=!shifton,tag=sgreload,scores={ingatlingammo=100..,gatlingammo=..0,gat_cha=..0}] at @s scoreboard players remove ingatlingammo 200
execute as @a[tag=sgreload] at @s run scoreboard players add @s gatlingreload 1
execute as @a[tag=sgreload,scores={gatlingreload=1..119}] at @s run effect @s slowness 1 99 true
execute as @a[tag=sgreload,scores={gatlingreload=1}] at @s run playsound reload ~~~ @a[r=5] 1 1 0
execute as @a[tag=sgreload,scores={gatlingreload=120..}] at @s run scoreboard players set @s gatlingammo 200
execute as @a[tag=sgreload,scores={gatlingreload=120..}] at @s run effect @s slowness 0 100 true
execute as @a[tag=sgreload,scores={gatlingreload=120..}] at @s run stopsound @s reload
execute as @a[tag=sgreload,scores={gatlingreload=120..}] at @s run tag @s remove sgreload
execute as @a[scores={gatlingreload=120..}] at @s run scoreboard players set @s gatlingreload 0
execute as @a[hasitem={item=minecraft:iron_hoe,location=slot.weapon.mainhand},tag=t:sneaking,tag=!gat_chaing,scores={gatlingammo=1..,gat_cha=0}] at @s run tag @s add gat_chaing
execute as @a[hasitem={item=minecraft:iron_hoe,location=slot.weapon.mainhand},tag=t:sneaking,tag=gat_chaing,scores={gatlingammo=1..,gat_cha=..100}] at @s run scoreboard players add @s gat_cha 1
execute as @a[hasitem={item=minecraft:iron_hoe,location=slot.weapon.mainhand},tag=t:sneaking,tag=gat_chaing,scores={gatlingammo=1..,gat_cha=1..100}] at @s run scoreboard players remove gatlingammo 1
execute as @a[hasitem={item=minecraft:iron_hoe,location=slot.weapon.mainhand},tag=t:sneaking,tag=gat_chaing,scores={gatlingammo=1..,gat_cha=1..99}] at @s run effect @s slowness 1 99 true
execute as @a[hasitem={item=minecraft:iron_hoe,location=slot.weapon.mainhand},tag=t:sneaking,tag=gat_chaing,scores={gatlingammo=1..,gat_cha=100..}] at @s run effect @s slowness 0 100 true
execute as @a[hasitem={item=minecraft:iron_hoe,location=slot.weapon.mainhand},tag=t:sneaking,tag=gat_chaing,scores={gatlingammo=0}] at @s run effect @s slowness 0 100 true
execute as @a[hasitem={item=minecraft:iron_hoe,location=slot.weapon.mainhand},tag=!t:sneaking,tag=gat_chaing,scores={gatlingammo=1..,gat_cha=1..}] at @s run effect @s slowness 0 100 true
execute as @a[hasitem={item=minecraft:iron_hoe,location=slot.weapon.mainhand},tag=!t:sneaking,tag=gat_chaing,scores={gatlingammo=1..,gat_cha=1..}] at @s run tag @s remove gat_chaing
execute as @a[hasitem={item=minecraft:iron_hoe,location=slot.weapon.mainhand},tag=t:sneaking,tag=gat_chaing,scores={gatlingammo=1..,gat_cha=100..}] at @s run tag @s remove gat_chaing
execute as @a[hasitem={item=minecraft:iron_hoe,location=slot.weapon.mainhand},tag=t:sneaking,tag=gat_chaing,scores={gatlingammo=0}] at @s run tag @s remove gat_chaing
execute as @a[hasitem={item=minecraft:iron_hoe,location=slot.weapon.mainhand},tag=!t:sneaking,tag=!gat_chaing,scores={gatlingammo=1..,gat_cha=1..}] at @s run summon boat ^^^1.1 facing ^^^2
execute as @a[hasitem={item=minecraft:iron_hoe,location=slot.weapon.mainhand},tag=!t:sneaking,tag=!gat_chaing,scores={gatlingammo=1..,gat_cha=1..}] at @s run tag @e[type=boat,r=1.5] add gatlinggun
execute as @a[hasitem={item=minecraft:iron_hoe,location=slot.weapon.mainhand},tag=!t:sneaking,tag=!gat_chaing,scores={gatlingammo=1..,gat_cha=1..}] at @s run scoreboard players set @e[type=boat,r=1.5,tag=gatlinggun] gatling_life 16
execute as @a[hasitem={item=minecraft:iron_hoe,location=slot.weapon.mainhand},tag=!t:sneaking,tag=!gat_chaing,scores={gatlingammo=1..,gat_cha=1..}] at @s run execute as @e[type=boat,r=1.5,tag=gatlinggun] at @s run tp @s ~~1000~
execute as @a[hasitem={item=minecraft:iron_hoe,location=slot.weapon.mainhand},tag=!t:sneaking,tag=!gat_chaing,scores={gatlingammo=1..,gat_cha=1..}] at @s run playsound sniper ~~~ @a[r=15] 1 1.3 0
execute as @a[hasitem={item=minecraft:iron_hoe,location=slot.weapon.mainhand},tag=!t:sneaking,tag=!gat_chaing,scores={gatlingammo=1..,gat_cha=1..}] at @s run scoreboard players remove gatlingammo 1
execute as @a[hasitem={item=minecraft:iron_hoe,location=slot.weapon.mainhand},tag=!t:sneaking,tag=!gat_chaing,scores={gatlingammo=1..,gat_cha=1..}] at @s run scoreboard players remove gat_cha 1







