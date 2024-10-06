#grenade
execute as @e[type=pvpmap:grenade_crash] at @s run particle minecraft:huge_exlosion_emitter ~~~
execute as @e[type=pvpmap:grenade_crash] at @s run playsound random.explode @a[r=20] ~~~ 1 1 0
execute as @e[type=pvpmap:grenade_crash] at @s run damage @a[x=~-0.5,y=~-0.5,z=~-0.5,dx=0,dy=0,dz=0] 20 entity_explosion entity @s
execute as @e[type=pvpmap:grenade_crash] at @s run damage @a[x=~-0.75,y=~-0.75,z=~-0.75,dx=0.5,dy=0.5,dz=0.5] 12 entity_explosion entity @s
execute as @e[type=pvpmap:grenade_crash] at @s run damage @a[x=~-1,y=~-1,z=~-1,dx=1,dy=1,dz=1] 8 entity_explosion entity @s
execute as @e[type=pvpmap:grenade_crash] at @s run damage @a[x=~-1.5,y=~-1.5,z=~-1.5,dx=2,dy=2,dz=2] 4 entity_explosion entity @s
execute as @e[type=pvpmap:grenade_crash] at @s run damage @a[x=~-2,y=~-2,z=~-2,dx=3,dy=3,dz=3] 2 entity_explosion entity @s
execute as @e[type=pvpmap:grenade_crash] at @s run damage @a[x=~-2.5,y=~-2.5,z=~-2.5,dx=4,dy=4,dz=4] 1 entity_explosion entity @s
kill @e[type=pvpmap:grenade_crash]
#recharge
execute as @a[scores={grenade_recharge=..300},tag=play,tag=c_gre] at @s unless entity @s[hasitem={item=pvpmap:grenade_item,quantity=6..}] run scoreboard players add @s grenade_recharge 1
execute as @a[scores={grenade_recharge=300..},tag=play,tag=c_gre] at @s unless entity @s[hasitem={item=pvpmap:grenade_item,quantity=6..}] run give @s pvpmap:grenade_item 1 
execute as @a[scores={grenade_recharge=300..},tag=play,tag=c_gre] at @s run scoreboard players set @s grenade_recharge 0
