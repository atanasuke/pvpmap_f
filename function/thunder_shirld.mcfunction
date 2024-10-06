execute as @a[hasitem={item=gold_ingot,data=334,location=slot.weapon.mainhand},tag=t:sneaking,tag=thunder_shirld,scores={elect=1..,select_ct=0}] at @s run scoreboard players set @s select_ct 20
execute as @a[hasitem={item=gold_ingot,data=334,location=slot.weapon.mainhand},tag=t:sneaking,tag=thunder_shirld,scores={elect=1..,select_ct=20}] at @s run tag @s remove thunder_shirld
execute as @a[hasitem={item=gold_ingot,data=334,location=slot.weapon.mainhand},tag=t:sneaking,tag=!thunder_shirld,scores={elect=1..,select_ct=0}] at @s run tag @s add thunder_shirld
execute as @a[hasitem={item=gold_ingot,data=334,location=slot.weapon.mainhand},tag=t:sneaking,tag=thunder_shirld,scores={elect=1..,select_ct=0}] at @s run scoreboard players set @s select_ct 19
tag @a[tag=thunder_shirld,scores={elect=..50}] remove thunder_shirld
execute as @a[tag=thunder_shirld,scores={elect=100..}] at @s run scoreboard players remove @s elect 150
scoreboard players random @e[type=thunder_shirld] rand 1 100
execute as @a[tag=thunder_shirld,scores={thunder_p_ct=..0}] at @s if entity @a[r=8,tag=!thunder_shirld] run particle pvpmap:thunder_shirld ~~~
execute as @a[tag=thunder_shirld,scores={thunder_p_ct=..0}] at @s if entity @a[r=8,tag=!thunder_shirld] run scoreboard players set @s thunder_p_ct 10
execute as @a[tag=thunder_shirld] at @s run scoreboard players add @a[r=8,tag=!thunder_shirld] eshock 4
execute as @a[tag=thunder_shirld,scores={thunder_p_ct=..0,rand=..39}] at @s if entity @e[r=8,tag=!thunder_shirld,family=inanimate] run particle pvpmap:thunder_shirld ~~~
execute as @a[tag=thunder_shirld,scores={thunder_p_ct=..0,rand=..39}] at @s if entity @e[r=8,tag=!thunder_shirld,family=inanimate] run scoreboard players set @s thunder_p_ct 10
execute as @a[tag=thunder_shirld] at @s as @e[r=8,tag=!thunder_shirld,family=inanimate] at @s run tp @s ~~~ ~~90
execute as @a[tag=thunder_shirld,scores={thunder_p_ct=..0,rand=..39}] at @s if entity @e[r=8,tag=!thunder_shirld,type=arrow] run particle pvpmap:thunder_shirld ~~~
execute as @a[tag=thunder_shirld,scores={thunder_p_ct=..0,rand=..39}] at @s if entity @e[r=8,tag=!thunder_shirld,type=arrow] run scoreboard players set @s thunder_p_ct 10
execute as @a[tag=thunder_shirld] at @s as @e[r=8,tag=!thunder_shirld,type=arrow] at @s run tp @s ~~~ ~90~
execute as @a[tag=thunder_shirld,scores={thunder_p_ct=..0,rand=..39}] at @s if entity @e[r=8,tag=!thunder_shirld,type=thrown_trident] run particle pvpmap:thunder_shirld ~~~
execute as @a[tag=thunder_shirld,scores={thunder_p_ct=..0,rand=..39}] at @s if entity @e[r=8,tag=!thunder_shirld,type=thrown_trident] run scoreboard players set @s thunder_p_ct 10
execute as @a[tag=thunder_shirld] at @s as @e[r=8,tag=!thunder_shirld,type=thrown_trident] at @s run tp @s ~~~ ~00~
execute as @a[tag=thunder_shirld,scores={thunder_p_ct=..0,rand=..39}] at @s if entity @e[y=~1000,r=8,tag=!thunder_shirld,family=inanimate] run particle pvpmap:thunder_shirld ~~~
execute as @a[tag=thunder_shirld,scores={thunder_p_ct=..0,rand=..39}] at @s if entity @e[y=~1000,r=8,tag=!thunder_shirld,family=inanimate] run scoreboard players set @s thunder_p_ct 10
execute as @a[tag=thunder_shirld] at @s as @e[y=~1000,r=8,tag=!thunder_shirld,family=inanimate] at @s run tp @s ~~~ ~~90

effect @a[tag=t:sprinting,scores={kit=24,elect=60000}] speed 1 2 true
execute as @a[tag=t:sprinting,scores={kit=24,elect=60000}] at @s run particle pvpmap:thunder_trail ~~~
effect @a[scores={kit=24,elect=..59950}] speed 0 3 true
scoreboard players add @a[scores={kit=24,elect=..59950}] elect 50
scoreboard players remove @a[scores={thunder_p_ct=1..}] thunder_p_ct 1
scoreboard players remove @a[scores={select_ct=1..}] select_ct 1


