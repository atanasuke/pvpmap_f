execute as @a[hasitem={item=pvpmap:gun_drone1},scores={gundroneammo=0,gundronecharge=600}] at @s run playsound random.potion.brewed @s ~~~ 1 1 1
execute as @a[hasitem={item=pvpmap:gun_drone1},scores={gundroneammo=0,gundronecharge=600}] at @s run scoreboard players set @s gundroneammo 1
execute as @a[hasitem={item=pvpmap:gun_drone1},scores={gundroneammo=1,gundronecharge=600}] at @s run scoreboard players set @s gundronecharge 0
execute as @a[hasitem={item=pvpmap:gun_drone1},scores={gundroneammo=0,gundronecharge=..599}] at @s run scoreboard players add @s gundronecharge 1
execute as @a at @s unless entity @s[hasitem={item=pvpmap:gun_drone1}] run scoreboard players set @s gundronecharge 0
execute as @a at @s unless entity @s[hasitem={item=pvpmap:gun_drone1}] run scoreboard players set @s gundroneammo 0