#thunder_crush
execute as @e[type=pvpmap:thunder_area] at @s run summon armor_stand thunder_area_c ~~1000~
execute as @e[type=pvpmap:thunder_area] at @s run particle ~~~ pvpmap:thunder_area
execute as @e[type=pvpmap:thunder_area] at @s run scoreboard players set @e[type=armor_stand,tag=thunder_area_c] thunder_time 0
kill @e[type=pvpmap:thunder_area]
execute as @e[type=armor_stand,tag=thunder_area_c] at @s run scoreboard players add @a[y=~-999,r=5.2] eshock 1
scoreboard players add @e[type=armor_stand,tag=thunder_area_c] thunder_time 1
execute as @e[type=armor_stand,tag=thunder_area_c,score={thunder_time=200..}] at @s run particle ~~~ pvpmap:thunder_burst
execute as @e[type=armor_stand,tag=thunder_area_c,score={thunder_time=200..}] at @s run playsound ambient.weather.thunder @a ~~~ 1 1 1
execute as @e[type=armor_stand,tag=thunder_area_c,score={thunder_time=200..}] at @s run damage @e[y=~-999,r=5.2] 12 lightning entity @s
execute as @e[type=armor_stand,tag=thunder_area_c,score={thunder_time=200..}] at @s run scoreboard players add @a[y=~-999,r=5.2] ieshock 30
kill @e[type=armor_stand,tag=thunder_area_c,score={thunder_time=200..}]
tp @e[type=armor_stand,tag=thunder_area_c] ~~~
execute as @e[type=pvpmap:thunder_crash] at @s run particle ~~~ pvpmap:thunder_trail
#recharge
execute as @a[scores={thunder_crash_recharge=..500,kit=24}] at @s unless entity @s[hasitem={item=pvpmap:thunder_crash,quantity=4..}] run scoreboard players add @s thunder_crash_recharge 1
execute as @a[scores={thunder_crash_recharge=500..,kit=24}] at @s unless entity @s[hasitem={item=pvpmap:thunder_crash,quantity=4..}] run give @s pvpmap:thunder_crash 1 
execute as @a[scores={thunder_crash_recharge=500..,kit=24}] at @s run scoreboard players set @s thunder_crash_recharge 0



