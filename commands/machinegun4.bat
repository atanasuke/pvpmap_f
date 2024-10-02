execute as @e[type=boat,tag=gatlinggun] at @s run scoreboard players remove @s gatlinggun_life 1
execute as @e[type=boat,tag=gatlinggun] at @s run particle minecraft:spinendrod ~~-999~
execute as @e[type=boat,tag=gatlinggun] at @s run tp @s ^^^1
execute as @e[type=boat,tag=gatlinggun] at @s unless block ~~-999~ air run kill @s
execute as @e[type=boat,tag=gatlinggun] at @s run damage @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] 1 self_destruct entity @s
execute as @e[type=boat,tag=gatlinggun] at @s run scoreboard players remove @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] blood 1
execute as @e[type=boat,tag=gatlinggun] at @s if entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run kill @s
execute as @e[type=boat,tag=gatlinggun,scores={gatlinggun_life=..0}] at @s run kill @s
execute as @e[type=boat,tag=gatlinggun] at @s run particle minecraft:spinendrod ~~-999~
execute as @e[type=boat,tag=gatlinggun] at @s run tp @s ^^^1
execute as @e[type=boat,tag=gatlinggun] at @s unless block ~~-999~ air run kill @s
execute as @e[type=boat,tag=gatlinggun] at @s run damage @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] 1 self_destruct entity @s
execute as @e[type=boat,tag=gatlinggun] at @s run scoreboard players remove @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] blood 1
execute as @e[type=boat,tag=gatlinggun] at @s if entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run kill @s
execute as @e[type=boat,tag=gatlinggun] at @s run particle minecraft:spinendrod ~~-999~
execute as @e[type=boat,tag=gatlinggun] at @s run tp @s ^^^1
execute as @e[type=boat,tag=gatlinggun] at @s unless block ~~-999~ air run kill @s
execute as @e[type=boat,tag=gatlinggun] at @s run damage @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] 1 self_destruct entity @s
execute as @e[type=boat,tag=gatlinggun] at @s run scoreboard players remove @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] blood 1
execute as @e[type=boat,tag=gatlinggun] at @s if entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run kill @s
execute as @e[type=boat,tag=gatlinggun] at @s run particle minecraft:spinendrod ~~-999~
execute as @e[type=boat,tag=gatlinggun] at @s run tp @s ^^^1
execute as @e[type=boat,tag=gatlinggun] at @s unless block ~~-999~ air run kill @s
execute as @e[type=boat,tag=gatlinggun] at @s run damage @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] 1 self_destruct entity @s
execute as @e[type=boat,tag=gatlinggun] at @s run scoreboard players remove @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] blood 1
execute as @e[type=boat,tag=gatlinggun] at @s if entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run kill @s