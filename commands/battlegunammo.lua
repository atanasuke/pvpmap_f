execute as @e[type=boat,tag=battlegun] at @s run scoreboard players remove @s battlegun_life 1
execute as @e[type=boat,tag=battlegun] at @s run particle minecraft:endrod ~~-999~
execute as @e[type=boat,tag=battlegun] at @s run tp @s ^^^1
execute as @e[type=boat,tag=battlegun] at @s unless block ~~-999~ air run kill @s
execute as @e[type=boat,tag=battlegun] positioned ~-0.5 ~-0.5 ~-1000.8 if entity @e[dx=0] as @a at @s run playsound random.bowhit @s ~~~ 1 1 1
execute as @e[type=boat,tag=battlegun] positioned ~-0.5 ~-0.5 ~-1000.8 if entity @e[dx=0] run scoreboard players remove @s blood 30
execute as @e[type=boat,tag=battlegun] positioned ~-0.5 ~-0.5 ~-1000.8 if entity @e[dx=0] run damage @s 14 entity_attack entity @s
execute as @e[type=boat,tag=battlegun] at @s run damage @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] 5 entity_attack entity @s
execute as @e[type=boat,tag=battlegun] at @s run scoreboard players remove @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] blood 2
execute as @e[type=boat,tag=battlegun] at @s if entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run kill @s
execute as @e[type=boat,tag=battlegun] at @s run particle minecraft:endrod ~~-999~
execute as @e[type=boat,tag=battlegun] at @s run tp @s ^^^1
execute as @e[type=boat,tag=battlegun] at @s unless block ~~-999~ air run kill @s
execute as @e[type=boat,tag=battlegun] positioned ~-0.5 ~-0.5 ~-1000.8 if entity @e[dx=0] as @a at @s run playsound random.bowhit @s ~~~ 1 1 1
execute as @e[type=boat,tag=battlegun] positioned ~-0.5 ~-0.5 ~-1000.8 if entity @e[dx=0] run scoreboard players remove @s blood 30
execute as @e[type=boat,tag=battlegun] positioned ~-0.5 ~-0.5 ~-1000.8 if entity @e[dx=0] run damage @s 14 entity_attack entity @s
execute as @e[type=boat,tag=battlegun] at @s run damage @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] 5 entity_attack entity @s
execute as @e[type=boat,tag=battlegun] at @s run scoreboard players remove @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] blood 2
execute as @e[type=boat,tag=battlegun] at @s if entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run kill @s
execute as @e[type=boat,tag=battlegun] at @s run particle minecraft:endrod ~~-999~
execute as @e[type=boat,tag=battlegun] at @s run tp @s ^^^1
execute as @e[type=boat,tag=battlegun] at @s unless block ~~-999~ air run kill @s
execute as @e[type=boat,tag=battlegun] positioned ~-0.5 ~-0.5 ~-1000.8 if entity @e[dx=0] as @a at @s run playsound random.bowhit @s ~~~ 1 1 1
execute as @e[type=boat,tag=battlegun] positioned ~-0.5 ~-0.5 ~-1000.8 if entity @e[dx=0] run scoreboard players remove @s blood 30
execute as @e[type=boat,tag=battlegun] positioned ~-0.5 ~-0.5 ~-1000.8 if entity @e[dx=0] run damage @s 14 entity_attack entity @s
execute as @e[type=boat,tag=battlegun] at @s run damage @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] 5 entity_attack entity @s
execute as @e[type=boat,tag=battlegun] at @s run scoreboard players remove @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] blood 2
execute as @e[type=boat,tag=battlegun] at @s if entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run kill @s
execute as @e[type=boat,tag=battlegun,scores={battlegun_life=..0}] at @s run kill @s