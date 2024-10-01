
execute as @a[hasitem={item=gun_drone,location=slot.weapon.mainhand}] at @s as @e[name=d] unless score @s d = @a[c=1] koyuu run summon pvpmap:drone d ~~3~
execute as @a[hasitem={item=gun_drone,location=slot.weapon.mainhand}] at @s run scoreboard players operation @e[name=d,c=1] d = @s koyuu
execute as @a at @s as @e[name=d] if score @s d = @a[c=1] koyuu rotated as @a[c=1] positioned as @s run tp @s ~ ~ ~ ~ ~
execute as @e[name=d] at @s as @a[hasitem={item=gun_drone,location=slot.weapon.mainhand}] if score @s koyuu = @e[c=1] d anchored eyes run camera @s set minecraft:free ease 0.1 linear pos ~~-0.25~ rot ~~
execute as @a[hasitem={item=gun_drone,location=slot.weapon.mainhand}] at @s if entity @s[y=~1.4,dx=0] unless entity @s[y=~1.5,dx=0] as @e[name=d] if score @s d = @a[c=1] koyuu rotated as @a[c=1] positioned as @s positioned ^^^0.5 if block ~~0.3~ air run tp @s ~~~
execute as @e[name=d] at @s as @a if score @s koyuu = @e[c=1] d run tag @s add camera
execute as @e[tag=!camera] at @s run camera @s clear
execute as @a at @s unless entity @s[hasitem={item=gun_drone,location=slot.weapon.mainhand}] run camera @s clear
tag @a remove camera
execute as @e[name=d] at @s if block ~~~ water run tp @s ~~-10000~
execute as @a at @e[name=d] if score @s koyuu = @e[c=1] d if entity @s[rm=60] run title @s actionbar §c§l離れすぎています
execute as @e[name=d] at @s run tp @s ~~~
