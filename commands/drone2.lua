execute as @a[hasitem={item=pvpmap:gun_drone1,location=slot.weapon.mainhand},tag=t:sneaking,scores={gun_droneammo=1}] at @s as @e[name=d] unless score @s d1 = @a[c=1] koyuu run summon pvpmap:gun_drone d1 ~~3~
execute as @a[hasitem={item=pvpmap:gun_drone1,location=slot.weapon.mainhand},tag=t:sneaking,scores={gun_droneammo=1}] at @s run scoreboard players operation @e[name=d1,c=1,y=~3] d1 = @s koyuu
execute as @a[hasitem={item=pvpmap:gun_drone1,location=slot.weapon.mainhand},tag=t:sneaking,scores={gun_droneammo=1}] at @s run scoreboard players set @e[name=d1,c=1,y=~3] gunammo 8
execute as @a[hasitem={item=pvpmap:gun_drone1,location=slot.weapon.mainhand},tag=t:sneaking,scores={gun_droneammo=1}] at @s run scoreboard players set @e[name=d1,c=1,y=~3] gunreload 0
execute as @a[hasitem={item=pvpmap:gun_drone1,location=slot.weapon.mainhand},tag=t:sneaking,scores={gun_droneammo=1}] at @s as @e[name=d1,c=1,y=~3] at @s run scoreboard players set @a[y=~-3,c=1] gun_droneammo 0
execute as @a[hasitem={item=pvpmap:gun_drone1,location=slot.weapon.mainhand},tag=t:sneaking,scores={gun_droneammo=1}] at @s unless entity @e[name=d1] run summon pvpmap:gun_drone d1 ~~3~
execute as @a[hasitem={item=pvpmap:gun_drone1,location=slot.weapon.mainhand},tag=t:sneaking,scores={gun_droneammo=1}] at @s run scoreboard players operation @e[name=d1,c=1,y=~3] d1 = @s koyuu
execute as @a[hasitem={item=pvpmap:gun_drone1,location=slot.weapon.mainhand},tag=t:sneaking,scores={gun_droneammo=1}] at @s run scoreboard players set @e[name=d1,c=1,y=~3] gunammo 8
execute as @a[hasitem={item=pvpmap:gun_drone1,location=slot.weapon.mainhand},tag=t:sneaking,scores={gun_droneammo=1}] at @s run scoreboard players set @e[name=d1,c=1,y=~3] gunreload 0
execute as @a[hasitem={item=pvpmap:gun_drone1,location=slot.weapon.mainhand},tag=t:sneaking,scores={gun_droneammo=1}] at @s as @e[name=d1,c=1,y=~3] at @s run scoreboard players set @a[y=~-3,c=1] gun_droneammo 0
execute as @a at @s as @e[name=d1] if score @s d1 = @a[c=1] koyuu rotated as @a[c=1] positioned as @s run tp @s ~ ~ ~ ~ ~
execute as @e[name=d1] at @s as @a[hasitem={item=comparator,data=1334,location=slot.weapon.mainhand}] if score @s koyuu = @e[c=1] d1 anchored eyes run camera @s set minecraft:free ease 0.1 linear pos ~~-0.25~ rot ~~
execute as @a[hasitem={item=comparator,data=1334,location=slot.weapon.mainhand}] at @s if entity @s[y=~1.4,dx=0] unless entity @s[y=~1.5,dx=0] as @e[name=d1] if score @s d1 = @a[c=1] koyuu rotated as @a[c=1] positioned as @s positioned ^^^0.4 if block ~~0.55~ air if block ~~~ air run tp @s ~~~
execute as @e[name=d1] at @s as @a if score @s koyuu = @e[c=1] d1 run tag @s add camera
execute as @e[tag=!camera] at @s run camera @s clear
execute as @a at @s unless entity @s[hasitem={item=comparator,data=1334,location=slot.weapon.mainhand},hasitem={item=comparator,data=334,location=slot.weapon.mainhand}] run camera @s clear
tag @a remove camera
execute as @e[name=d1] at @s if block ~~~ water run tp @s ~~-10000~
execute as @e[name=d1] at @s run tp @s ~~~
execute as @e[name=d1] at @s if score @s d1 = @a[hasitem={item=comparator,data=1334,location=slot.weapon.mainhand},tag=t:jumping] koyuu run tag @s add gun_trigger
execute as @e[name=d1,tag=gun_trigger,scores={gunammo=1..}] at @s run scoreboard players operation @s math1 = @s gunammo
execute as @e[name=d1,tag=gun_trigger,scores={gunammo=1..}] at @s run scoreboard players operation @s math1 % 2
execute as @e[name=d1,tag=gun_trigger,scores={gunammo=1..,math1=0}] at @s run summon boat ^0.1^^ facing ^^^20
execute as @e[name=d1,tag=gun_trigger,scores={gunammo=1..,math1=1}] at @s run summon boat ^-0.1^^ facing ^^^20
execute as @e[name=d1,tag=gun_trigger,scores={gunammo=1..}] at @s run tag @e[type=boat,r=1] 
execute as @e[name=d1,tag=gun_trigger,scores={gunammo=1..}] at @s run tp @e[type=boat,r=1] ~~1000~
execute as @e[name=d1,tag=gun_trigger,scores={gunammo=1..}] at @s run playsound handgun  ~~~ @a  0.3 1 0.2
execute as @e[name=d1,tag=gun_trigger,scores={gunammo=1..}] at @s run scoreboard players remove @s gunammo 1
execute as @e[name=d1,tag=gun_trigger,scores={gunammo=0}] at @s run tag @s remove gun_trigger
execute as @a unless entity @s[hasitem={item=comparator,data=1334,location=slot.weapon.mainhand}] unless score @s koyuu = @e[name=d1] d1 at @e[name=d1,c=1] run tp @e[name=d1,c=1] ~~~ facing @s
execute as @a unless entity @s[hasitem={item=comparator,data=1334,location=slot.weapon.mainhand}] unless score @s koyuu = @e[name=d1] d1 at @e[name=d1,c=1] run tag @e[name=d1,c=1] add gun_trigger
execute as @e[name=d1,scores={gunammo=0}] at @s run scoreboard players add @s gunreload 1
execute as @e[name=d1,scores={gunammo=0,gunreload=1}] at @s run playsound reload ~~~ @a 0.2 1 0
execute as @e[name=d1,scores={gunammo=0,gunreload=20}] at @s run stopsound @s
execute as @e[name=d1,scores={gunammo=0,gunreload=20}] at @s run scoreboard players set @s gunammo 8
execute as @e[name=d1,scores={gunreload=20}] at @s run playsound reload ~~~ @a 0.2 1 0
