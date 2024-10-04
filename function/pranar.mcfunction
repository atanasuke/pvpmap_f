#gun
execute as @a[hasitem={item=spyglass,data=999,location=slot.weapon.mainhand},tag=t:sneaking,tag=!shifton,scores={inpraammo=3..,praammo=..0}] at @s run tag @s add prreload
execute as @a[hasitem={item=spyglass,data=999,location=slot.weapon.mainhand},tag=t:sneaking,tag=!shifton,tag=prreload,scores={inpraammo=3..,praammo=..0,prareload=..0}] at @s run scoreboard players remove @s inpraammo 3
execute as @a[tag=prreload] at @s run scoreboard players add @s prareload 1
execute as @a[tag=prreload,scores={prareload=1..80}] at @s run effect @s slowness 1 5 true
execute as @a[tag=prreload,scores={prareload=1}] at @s run playsound reload @s ~~~ 1 1 0
execute as @a[tag=prreload,scores={prareload=80..}] at @s run scoreboard players set @s praammo 3
execute as @a[tag=prreload,scores={prareload=80..}] at @s run effect @s slowness 0 6 true
execute as @a[tag=prreload,scores={prareload=80..}] at @s run stopsound @s reload
execute as @a[tag=prreload,scores={prareload=80..}] at @s run tag @s remove prreload
execute as @a[scores={prareload=80..}] at @s run scoreboard players set @s prareload 0
execute as @a[hasitem={item=spyglass,data=999,location=slot.weapon.mainhand},tag=t:sneaking,scores={praammo=1..,pra_ct=0}] at @s run summon boat ^^^2 facing ^^^3
execute as @a[hasitem={item=spyglass,data=999,location=slot.weapon.mainhand},tag=t:sneaking,scores={praammo=1..,pra_ct=0}] at @s run tag @e[type=boat,r=4] add pragun
execute as @a[hasitem={item=spyglass,data=999,location=slot.weapon.mainhand},tag=t:sneaking,scores={praammo=1..,pra_ct=0}] at @s run scoreboard players set @e[type=boat,r=4,tag=pragun] pragun_life 15
execute as @a[hasitem={item=spyglass,data=999,location=slot.weapon.mainhand},tag=t:sneaking,scores={praammo=1..,pra_ct=0}] at @s run execute as @e[type=boat,r=4,tag=pragun] at @s run tp @s ~~1001.2~
execute as @a[hasitem={item=spyglass,data=999,location=slot.weapon.mainhand},tag=t:sneaking,scores={praammo=1..,pra_ct=0}] at @s run playsound snipe @a[r=45] ~~~ 0.35 1.2 0
execute as @a[hasitem={item=spyglass,data=999,location=slot.weapon.mainhand},tag=t:sneaking,scores={praammo=1..,pra_ct=0}] at @s run scoreboard players remove  @s praammo 1
execute as @a[hasitem={item=spyglass,data=999,location=slot.weapon.mainhand},tag=t:sneaking,scores={praammo=1..,pra_ct=0}] at @s run scoreboard players set @s pra_ct 35
#ammo
execute as @e[type=boat,tag=pragun] at @s run scoreboard players remove @s pragun_life 1
execute as @e[type=boat,tag=pragun] at @s unless entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run tp @s ^^^1
execute as @e[type=boat,tag=pragun] at @s unless entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run tp @s ^^^1
execute as @e[type=boat,tag=pragun] at @s unless entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run particle minecraft:spinendrod ~~-999~
execute as @e[type=boat,tag=pragun] at @s unless entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run tp @s ^^^1
execute as @e[type=boat,tag=pragun] at @s unless entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run tp @s ^^^1
execute as @e[type=boat,tag=pragun] at @s unless entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run particle minecraft:spinendrod ~~-999~
execute as @e[type=boat,tag=pragun] at @s run damage @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] 8 entity_attack entity @s
execute as @e[type=boat,tag=pragun] at @s run scoreboard players remove @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] bleeding 4090
execute as @e[type=boat,tag=pragun,scores={pragun_life=..0}] at @s run kill @s
#charge
execute as @a[hasitem={item=spyglass,data=999},scores={pracharge=400..,inpraammo=..12}] at @s run scoreboard players add @s inpraammo 1
execute as @a[hasitem={item=spyglass,data=999},scores={pracharge=400..}] at @s run scoreboard players set @s pracharge 0
execute as @a[hasitem={item=spyglass,data=999},scores={pracharge=..399}] at @s run scoreboard players add @s pracharge 1
execute as @a[scores={pra_ct=1..}] at @s run scoreboard players remove @s pra_ct 1