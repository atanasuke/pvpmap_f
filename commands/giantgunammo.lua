execute as @e[type=boat,tag=giantgun] at @s run scoreboard players remove @s giantgun_life 1
execute as @e[type=boat,tag=giantgun] at @s run particle minecraft:endrod ~~-999~
execute as @e[type=boat,tag=giantgun] at @s run tp @s ^^^0.75
execute as @e[type=boat,tag=giantgun,scores=[giantgun_block=0]] at @s unless block ~~-999~ air run kill @s
execute as @e[type=boat,tag=giantgun] at @s unless block ~~-999~ air run scoreboard players remove @s giantgun_block 1
execute as @e[type=boat,tag=giantgun] at @s run damage @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] 18 entity_attack entity @s
execute as @e[type=boat,tag=giantgun] at @s run scoreboard players remove @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] blood 2
execute as @e[type=boat,tag=giantgun] at @s if entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run kill @s
execute as @e[type=boat,tag=giantgun,scores={giantgun_life=..0}] at @s run kill @s