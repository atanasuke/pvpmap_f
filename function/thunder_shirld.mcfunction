execute as @a[hasitem={item=gold_ingot,data=334,location=slot.weapon.mainhand},tag=t:sneaking,tag=thunder_shirld,scores={elect=1..,select_ct=0}] at @s run tag @s remove thunder_shirld
execute as @a[hasitem={item=gold_ingot,data=334,location=slot.weapon.mainhand},tag=t:sneaking,tag=!thunder_shirld,scores={elect=1..,select_ct=0}] at @s run scoreboard players set @s select_ct 20
execute as @a[hasitem={item=gold_ingot,data=334,location=slot.weapon.mainhand},tag=t:sneaking,tag=!thunder_shirld,scores={elect=1..,select_ct=0}] at @s run tag @s add thunder_shirld
execute as @a[hasitem={item=gold_ingot,data=334,location=slot.weapon.mainhand},tag=t:sneaking,tag=thunder_shirld,scores={elect=1..,select_ct=0}] at @s run scoreboard players set @s select_ct 20
tag @a[tag=thunder_shirld,scores={elect=..0}] remove thunder_shirld
execute as @a[tag=thunder_shirld,scores={elect=100..}] at @s run scoreboard players remove @s elect 100
execute as @a[tag=thunder_shirld,scores={thunder_p_ct=..0}] at @s if entity @a[r=4,tag=!thunder_shirld] run particle ~~~ pvpmap:thunder_shirld
execute as @a[tag=thunder_shirld,scores={thunder_p_ct=..0}] at @s if entity @a[r=4,tag=!thunder_shirld] run scoreboard players set @s thunder_p_ct 10
execute as @a[tag=thunder_shirld] at @s run scoreboard players add @a[r=4,tag=!thunder_shirld] eshock 1
execute as @a[tag=thunder_shirld,scores={thunder_p_ct=..0}] at @s if entity @e[r=4,tag=!thunder_shirld,family=inanimate] run particle ~~~ pvpmap:thunder_shirld
execute as @a[tag=thunder_shirld,scores={thunder_p_ct=..0}] at @s if entity @e[r=4,tag=!thunder_shirld,family=inanimate] run scoreboard players set @s thunder_p_ct 10
execute as @a[tag=thunder_shirld] at @s as @e[r=4,tag=!thunder_shirld,family=inanimate] run tp @s ~~~ ~90~
execute as @a[tag=thunder_shirld,scores={thunder_p_ct=..0}] at @s if entity @e[y=~1000,r=4,tag=!thunder_shirld,family=inanimate] run particle ~~~ pvpmap:thunder_shirld
execute as @a[tag=thunder_shirld,scores={thunder_p_ct=..0}] at @s if entity @e[y=~1000,r=4,tag=!thunder_shirld,family=inanimate] run scoreboard players set @s thunder_p_ct 10
execute as @a[tag=thunder_shirld] at @s as @e[y=~1000,r=4,tag=!thunder_shirld,family=inanimate] run tp @s ~~~ ~90~

scoreboard players add @a[scores={kit=24,elect=..59050}] elect 50
scoreboard players remove @a[scores={thunder_p_ct=1..}] thunder_p_ct 1
scoreboard players remove @a[scores={select_ct_ct=1..}] select_ct 1


