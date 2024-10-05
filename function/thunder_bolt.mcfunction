#thunder_bolt_crash
execute as @e[type=pvpmap:thunder_bolt_crash] at @s run particle pvpmap:thunder_crash ~~~
execute as @e[type=pvpmap:thunder_bolt_crash] at @s if entity @a[x=~-0.5,y=~-0.5,z=~-0.5,dx=0] run scoreboard players set @a[x=~-0.5,y=~-0.5,z=~-0.5,dx=0] last_bolt_crash 60
execute as @e[type=pvpmap:thunder_bolt_crash] at @s if entity @a[x=~-0.75,y=~-0.75,z=~-0.75,dx=0.75,dy=0.75,dz=0.75] run scoreboard players add @a[x=~-0.75,y=~-0.75,z=~-0.75,dx=0.75,dy=0.75,dz=0.75] ieshock 26
execute as @e[type=pvpmap:thunder_bolt_crash] at @s run tag @a[x=~-1.25,y=~-1.25,z=~-1.25,dx=1.5,dy=1.5,dz=1.5] add frash1
execute as @e[type=pvpmap:thunder_bolt_crash] at @s run damage @a[x=~-1.25,y=~-1.25,z=~-1.25,dx=1.5,dy=1.5,dz=1.5] 4 lightning entity @s
kill @e[type=pvpmap:thunder_bolt_crash]
execute as @e[type=pvpmap:thunder_bolt_crash] at @s run particle pvpmap:thunder_trail ~~~
scoreboard players remove @a[scores={last_bolt=1..}] last_bolt 1
#recharge
execute as @a[hasitem={item=gold_nugget,data=334,location=slot.weapon.mainhand},tag=t:sneaking,scores={special=60..}] at @s run say §y[サンダーボルト]
execute as @a[hasitem={item=gold_nugget,data=334,location=slot.weapon.mainhand},tag=t:sneaking,scores={special=60..}] at @s run give @s pvpmap:thunder_bolt_item 5 
execute as @a[hasitem={item=gold_nugget,data=334,location=slot.weapon.mainhand},tag=t:sneaking,scores={special=60..}] at @s run scoreboard players remove @s special 60



