#frash_grenade
execute as @e[type=pvpmap:f_grenade_crash] at @s run particle minecraft:huge_exlosion_emitter ~~~
execute as @e[type=pvpmap:f_grenade_crash] at @s run playsound random.explode @a[r=20] ~~~ 1 1 0
execute as @e[type=pvpmap:f_grenade_crash] at @s run function f_grenade_frash
kill @e[type=pvpmap:f_grenade_crash]
#recharge
execute as @a[scores={f_grenade_recharge=..400},tag=play,tag=c_fgre] at @s unless entity @s[hasitem={item=pvpmap:f_grenade_item,quantity=4..}] run scoreboard players add @s grenade_recharge 1
execute as @a[scores={f_grenade_recharge=400..},tag=play,tag=c_fgre] at @s unless entity @s[hasitem={item=pvpmap:f_grenade_item,quantity=4..}] run give @s pvpmap:f_grenade_item 1 
execute as @a[scores={f_grenade_recharge=400..},tag=play,tag=c_fgre] at @s run scoreboard players set @s f_grenade_recharge 0
