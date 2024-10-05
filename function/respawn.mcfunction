execute as @a[x=60,y=-60,z=-5,dx=0] at @s run scoreboard players set @s blood 200
gamemode spectator @a[x=60,y=-60,z=-5,dx=0,scores={Life=..1},tag=play]
execute as @a[x=60,y=-60,z=-5,dx=0,tag=play] at @s run scoreboard players remove @s Life 1
execute as @a[x=60,y=-60,z=-5,dx=0,tag=play,scores={last_bolt=1..}] at @s run give @a[hasitem={item=pvpmap:thunder_bolt_item}] pvpmap:thunder_bolt_item 1
execute as @a[x=60,y=-60,z=-5,dx=0,tag=play] at @s run effect @s regeneration 3 5 true
scoreboard players set @a[x=60,y=-60,z=-5,dx=0] muteki 100
tp @p[scores={stage=12},x=60,y=-60,z=-5,dx=0] -255 -54 5
tp @p[scores={stage=11},x=60,y=-60,z=-5,dx=0] -250 -55 -80
tp @p[scores={stage=10},x=60,y=-60,z=-5,dx=0] -340 -50 -90
tp @p[scores={stage=1},x=60,y=-60,z=-5,dx=0] -90 -60 -30
tp @p[scores={stage=2},x=60,y=-60,z=-5,dx=0] -74 -55 14
tp @p[scores={stage=3},x=60,y=-60,z=-5,dx=0] -180 -45 80
tp @p[scores={stage=4},x=60,y=-60,z=-5,dx=0] -123 -47 49
tp @p[scores={stage=5},x=60,y=-60,z=-5,dx=0] -145 -60 -99
tp @p[scores={stage=6},x=60,y=-60,z=-5,dx=0] -94 -60 -73
tp @p[scores={stage=7},x=60,y=-60,z=-5,dx=0] -162 -60 47
tp @p[scores={stage=8},x=60,y=-60,z=-5,dx=0] -176 -59 -36
tp @p[scores={stage=9},x=60,y=-60,z=-5,dx=0] -116 -59 9
tp @p[scores={stage=13},x=60,y=-60,z=-5,dx=0] 78 -53 139
tp @a[scores={stage=14},x=60,y=-60,z=-5,dx=0]  0 -58 40
tp @a[scores={stage=15},x=60,y=-60,z=-5,dx=0] -75 -52 -145
tp @p[scores={stage=16},x=60,y=-60,z=-5,dx=0] 157 -41 62
tp @p[scores={stage=17},x=60,y=-60,z=-5,dx=0] 115 -58 -15
gamemode spectator @p[x=60,y=-60,z=-5,dx=0,scores={Life=..0}]
tag @a[tag=play,scores={Life=..-1}] remove play
execute as @e[tag=play] at @s run effect @s night_vision 99999 255 true
clear @a end_portal_frame
