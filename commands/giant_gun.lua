execute as @a[hasitem={item=pvpmap:giants_gun,location=slot.weapon.mainhand},tag=t:sneaking,tag=!shifton,scores={ingiantammo=1..,giantammo=..0}] at @s run tag @s add sgireload
execute as @a[hasitem={item=pvpmap:giants_gun,location=slot.weapon.mainhand},tag=t:sneaking,tag=!shifton,tag=sgireload,scores={ingiantammo=1..,giantammo=..0}] at @s scoreboard players remove @s ingiantammo 2
execute as @a[tag=sgireload] at @s run scoreboard players add @s giantreload 1
execute as @a[tag=sgireload,scores={giantreload=1..70}] at @s run effect @s slowness 1 5 true
execute as @a[tag=sgireload,scores={giantreload=1}] at @s run playsound reload ~~~ @a[r=5] 1 1 0
execute as @a[tag=sgireload,scores={giantreload=70..}] at @s run scoreboard players set @s giantammo 1
execute as @a[tag=sgireload,scores={giantreload=70..}] at @s run effect @s slowness 0 6 true
execute as @a[tag=sgireload,scores={giantreload=70..}] at @s run stopsound @s reload
execute as @a[tag=sgireload,scores={giantreload=70..}] at @s run tag @s remove sgireload
execute as @a[scores={giantreload=70..}] at @s run scoreboard players set @s giantreload 0
execute as @a[hasitem={item=pvpmap:giants_gun,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantammo=1..,giant_ct=0}] at @s run summon boat ^^^1.1 facing ^^^2
execute as @a[hasitem={item=pvpmap:giants_gun,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantammo=1..,giant_ct=0}] at @s run tag @e[type=boat,r=1.5] add giantgun
execute as @a[hasitem={item=pvpmap:giants_gun,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantammo=1..,giant_ct=0}] at @s run scoreboard players set @e[type=boat,r=1.5,tag=giantgun] giantgun_life 100
execute as @a[hasitem={item=pvpmap:giants_gun,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantammo=1..,giant_ct=0}] at @s run scoreboard players set @e[type=boat,r=1.5,tag=giantgun] giantgun_block 2
execute as @a[hasitem={item=pvpmap:giants_gun,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantammo=1..,giant_ct=0}] at @s run execute as @e[type=boat,r=1.5,tag=giantgun] at @s run tp @s ~~1000~
execute as @a[hasitem={item=pvpmap:giants_gun,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantammo=1..,giant_ct=0}] at @s run playsound handgun ~~~ @a[r=15] 0.3 0.45 0
execute as @a[hasitem={item=pvpmap:giants_gun,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantammo=1..,giant_ct=0}] at @s run scoreboard players remove  @s giantammo 1
execute as @a[hasitem={item=pvpmap:giants_gun,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantammo=1..,giant_ct=0}] at @s run scoreboard players set @s giant_ct 20