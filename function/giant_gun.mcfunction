#gun
execute @a[hasitem={item=pvpmap:giants_gun,location=slot.weapon.mainhand},tag=t:sneaking,tag=!shifton,scores={ingiantammo=1..,giantammo=..0}] ~~~ tag @s add sgireload
execute @a[hasitem={item=pvpmap:giants_gun,location=slot.weapon.mainhand},tag=t:sneaking,tag=!shifton,tag=sgireload,scores={ingiantammo=1..,giantammo=..0}] ~~~ scoreboard players remove @s ingiantammo 2
execute @a[tag=sgireload] ~~~ scoreboard players add @s giantreload 1
execute @a[tag=sgireload,scores={giantreload=1..70}] ~~~ effect @s slowness 1 5 true
execute @a[tag=sgireload,scores={giantreload=1}] ~~~ playsound reload @a[r=5] ~~~ 1 1 0
execute @a[tag=sgireload,scores={giantreload=70..}] ~~~ scoreboard players set @s giantammo 1
execute @a[tag=sgireload,scores={giantreload=70..}] ~~~ effect @s slowness 0 6 true
execute @a[tag=sgireload,scores={giantreload=70..}] ~~~ stopsound @s reload
execute @a[tag=sgireload,scores={giantreload=70..}] ~~~ tag @s remove sgireload
execute @a[scores={giantreload=70..}] ~~~ scoreboard players set @s giantreload 0
execute @a[hasitem={item=pvpmap:giants_gun,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantammo=1..,giant_ct=0}] ~~~ summon boat ^^^1.1 facing ^^^2
execute @a[hasitem={item=pvpmap:giants_gun,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantammo=1..,giant_ct=0}] ~~~ tag @e[type=boat,r=1.5] add giantgun
execute @a[hasitem={item=pvpmap:giants_gun,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantammo=1..,giant_ct=0}] ~~~ scoreboard players set @e[type=boat,r=1.5,tag=giantgun] giantgun_life 100
execute @a[hasitem={item=pvpmap:giants_gun,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantammo=1..,giant_ct=0}] ~~~ scoreboard players set @e[type=boat,r=1.5,tag=giantgun] giantgun_block 2
execute @a[hasitem={item=pvpmap:giants_gun,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantammo=1..,giant_ct=0}] ~~~ execute @e[type=boat,r=1.5,tag=giantgun] ~~~ tp @s ~~1000~
execute @a[hasitem={item=pvpmap:giants_gun,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantammo=1..,giant_ct=0}] ~~~ playsound handgun @a[r=15] ~~~ 0.3 0.45 0
execute @a[hasitem={item=pvpmap:giants_gun,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantammo=1..,giant_ct=0}] ~~~ scoreboard players remove  @s giantammo 1
execute @a[hasitem={item=pvpmap:giants_gun,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantammo=1..,giant_ct=0}] ~~~ scoreboard players set @s giant_ct 20
#ammo
execute @e[type=boat,tag=giantgun]  scoreboard players remove @s giantgun_life 1
execute @e[type=boat,tag=giantgun]  particle minecraft:endrod ~~-999~
execute @e[type=boat,tag=giantgun]  tp @s ^^^1
execute @e[type=boat,tag=giantgun,scores=[giantgun_block=0]] unless block ~~-999~ air kill @s
execute @e[type=boat,tag=giantgun] at @s unless block ~~-999~ air run scoreboard players remove @s giantgun_block 1
execute @e[type=boat,tag=giantgun]  damage @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] 18 entity_attack entity @s
execute @e[type=boat,tag=giantgun]  scoreboard players remove @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] blood 2
execute @e[type=boat,tag=giantgun]  if entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] kill @s
execute @e[type=boat,tag=giantgun,scores={giantgun_life=..0}]  kill @s