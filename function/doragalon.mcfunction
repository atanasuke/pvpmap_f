#gun
execute as @a[hasitem={item=spyglass,data=777,location=slot.weapon.mainhand},tag=t:sneaking,tag=!shifton,scores={indoraammo=2..,doraammo=..0}] at @s run tag @s add dreload
execute as @a[hasitem={item=spyglass,data=777,location=slot.weapon.mainhand},tag=t:sneaking,tag=!shifton,tag=dreload,scores={indoraammo=2..,doraammo=..0,dorareload=..0}] at @s run scoreboard players remove @s indoraammo 2
execute as @a[tag=dreload] at @s run scoreboard players add @s dorareload 1
execute as @a[tag=dreload,scores={dorareload=1..100}] at @s run effect @s slowness 1 5 true
execute as @a[tag=dreload,scores={dorareload=1}] at @s run playsound reload @s ~~~ 1 1 0
execute as @a[tag=dreload,scores={dorareload=100..}] at @s run scoreboard players set @s doraammo 2
execute as @a[tag=dreload,scores={dorareload=100..}] at @s run effect @s slowness 0 6 true
execute as @a[tag=dreload,scores={dorareload=100..}] at @s run stopsound @s reload
execute as @a[tag=dreload,scores={dorareload=100..}] at @s run tag @s remove dreload
execute as @a[scores={dorareload=100..}] at @s run scoreboard players set @s dorareload 0
execute as @a[hasitem={item=spyglass,data=777,location=slot.weapon.mainhand},tag=t:sneaking,tag=shifton,scores={doraammo=1..,dora_ct=0}] at @s run summon boat ^^^2 facing ^^^3
execute as @a[hasitem={item=spyglass,data=777,location=slot.weapon.mainhand},tag=t:sneaking,tag=shifton,scores={doraammo=1..,dora_ct=0}] at @s run tag @e[type=boat,r=4] add doragun
execute as @a[hasitem={item=spyglass,data=777,location=slot.weapon.mainhand},tag=t:sneaking,tag=shifton,scores={doraammo=1..,dora_ct=0}] at @s run scoreboard players set @e[type=boat,r=4,tag=doragun] doragun_life 15
execute as @a[hasitem={item=spyglass,data=777,location=slot.weapon.mainhand},tag=t:sneaking,tag=shifton,scores={doraammo=1..,dora_ct=0}] at @s run execute as @e[type=boat,r=4,tag=doragun] at @s run tp @s ~~1001.2~
execute as @a[hasitem={item=spyglass,data=777,location=slot.weapon.mainhand},tag=t:sneaking,tag=shifton,scores={doraammo=1..,dora_ct=0}] at @s run playsound snipe @a[r=90] ~~~ 0.4 0.6 0
execute as @a[hasitem={item=spyglass,data=777,location=slot.weapon.mainhand},tag=t:sneaking,tag=shifton,scores={doraammo=1..,dora_ct=0}] at @s run scoreboard players remove  @s doraammo 1
execute as @a[hasitem={item=spyglass,data=777,location=slot.weapon.mainhand},tag=t:sneaking,tag=shifton,scores={doraammo=1..,dora_ct=0}] at @s run scoreboard players set @s dora_ct 50
execute as @a[hasitem=[item=spyglass,data=777,location=slot.weapon.mainhand],tag=t:sneaking,tag=!shifton] at @s run tag @s add shifton
#ammo
execute as @e[type=boat,tag=doragun] at @s run scoreboard players remove @s doragun_life 1
execute as @e[type=boat,tag=doragun] at @s unless entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run tp @s ^^^1
execute as @e[type=boat,tag=doragun] at @s unless entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run tp @s ^^^1
execute as @e[type=boat,tag=doragun] at @s unless entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run particle minecraft:spinendrod ~~-999~
execute as @e[type=boat,tag=doragun] at @s unless entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run tp @s ^^^1
execute as @e[type=boat,tag=doragun] at @s unless entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run tp @s ^^^1
execute as @e[type=boat,tag=doragun] at @s unless entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run tp @s ^^^1
execute as @e[type=boat,tag=doragun] at @s unless entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run particle minecraft:spinendrod ~~-999~
execute as @e[type=boat,tag=doragun] at @s unless entity @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] run tp @s ^^^1
execute as @e[type=boat,tag=doragun] at @s unless block ~~-999~ air run kill @s
execute as @e[type=boat,tag=doragun] at @s positioned ~-0.5~-999.5~-0.5 if entity @e[dx=0] positioned ~~-1.55~ if entity @e[dx=0] run playsound bow.hit @a ~~~ 100 1 1
execute as @e[type=boat,tag=doragun] at @s positioned ~-0.5~-999.5~-0.5 if entity @e[dx=0] positioned ~~-1.55~ if entity @e[dx=0] run damage @e[dx=0] 40 entity_attack entity @s
execute as @e[type=boat,tag=doragun] at @s positioned ~-0.5~-999.5~-0.5 if entity @e[dx=0] positioned ~~-1.55~ if entity @e[dx=0] run scoreboard players remove @e[dx=0] blood 150
execute as @e[type=boat,tag=doragun] at @s run damage @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] 10 entity_attack entity @s
execute as @e[type=boat,tag=doragun] at @s run scoreboard players remove @e[x=~-0.5,z=~-0.5,y=~-999.5,dx=0] blood 30
execute as @e[type=boat,tag=doragun,scores={doragun_life=..0}] at @s run kill @s
#charge
execute as @a[hasitem={item=spyglass,data=777},scores={doracharge=400..,indoraammo=..7}] at @s run scoreboard players add @s indoraammo 1
execute as @a[hasitem={item=spyglass,data=777},scores={doracharge=400..}] at @s run scoreboard players set @s doracharge 0
execute as @a[hasitem={item=spyglass,data=777},scores={doracharge=..399}] at @s run scoreboard players add @s doracharge 1
execute as @a[scores={dora_ct=1..}] at @s run scoreboard players remove @s dora_ct 1