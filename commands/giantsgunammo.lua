execute as @e[type=boat,tag=giantsgun] at @e[c=2] at @e[c=2] at @e[c=2] at @e[c=2] at @e[c=2] at @e[c=2] at @e[c=2] at @s unless entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run particle minecraft:endrod ~~-999~
execute as @e[type=boat,tag=giantsgun] at @e[c=2] at @e[c=2] at @e[c=2] at @e[c=2] at @e[c=2] at @e[c=2] at @e[c=2] at @s unless entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run tp @s ^^^0.75
execute as @e[type=boat,tag=giantsgun] at @e[c=2] at @e[c=2] at @e[c=2] at @e[c=2] at @e[c=2] at @e[c=2] at @e[c=2] at @s unless entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run damage @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] 99 self_destruct entity @s
execute as @e[type=boat,tag=giantsgun] at @e[c=2] at @e[c=2] at @e[c=2] at @e[c=2] at @e[c=2] at @e[c=2] at @e[c=2] at @s unless entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run scoreboard players remove @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] blood 2
execute as @e[type=boat,tag=giantsgun] at @e[c=2] at @e[c=2] at @e[c=2] at @e[c=2] at @e[c=2] at @e[c=2] at @e[c=2] at @s unless entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] as @a at @s run playsound random.bowhit @s ~~~ 1 1 1
execute as @e[type=boat,tag=giantsgun] at @s run kill @s