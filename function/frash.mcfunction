camera @a[tag=frash1] fade time 0.3 1 2 color 255 255 255
scoreboard players set @a[tag=frash1] frash 66
camera @a[tag=frash2] fade time 0.1 2 3 color 255 255 255
scoreboard players set @a[tag=frash2] frash 102
tag @a remove frash2
tag @a remove frash1
scoreboard players remove @a[scores={frash=1..}] frash 1
