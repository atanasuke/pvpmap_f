execute as @a[hasitem={item=spyglass,data=512,location=slot.weapon.mainhand},tag=t:sneaking,tag=!shifton,scores={special=60..,giantsammo=..0}] at @s run tag @s add sgsreload
execute as @a[hasitem={item=spyglass,data=512,location=slot.weapon.mainhand},tag=t:sneaking,tag=!shifton,tag=sgsreload,scores={special=60..,giantsammo=..0}] at @s scoreboard players remove @s special 60
execute as @a[tag=sgsreload] at @s run scoreboard players add @s giantsreload 1
execute as @a[tag=sgsreload,scores={giantsreload=1..200}] at @s run effect @s slowness 1 254 true
execute as @a[tag=sgsreload,scores={giantsreload=1}] at @s run playsound reload ~~~ @a[r=5] 1 1 0
execute as @a[tag=sgsreload,scores={giantsreload=200..}] at @s run scoreboard players set @s giantsammo 1
execute as @a[tag=sgsreload,scores={giantsreload=200..}] at @s run effect @s slowness 0 255 true
execute as @a[tag=sgsreload,scores={giantsreload=200..}] at @s run stopsound @s reload
execute as @a[tag=sgsreload,scores={giantsreload=200..}] at @s run tag @s remove sgsreload
execute as @a[scores={giantsreload=200..}] at @s run scoreboard players set @s giantsreload 0
execute as @a[hasitem={item=spyglass,data=512,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantsammo=1..,giants_ct=0}] at @s run summon boat ^^^1.1 facing ^^^2
execute as @a[hasitem={item=spyglass,data=512,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantsammo=1..,giants_ct=0}] at @s run tag @e[type=boat,r=1.5] add giantsgun
execute as @a[hasitem={item=spyglass,data=512,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantsammo=1..,giants_ct=0}] at @s run scoreboard players set @e[type=boat,r=1.5,tag=giantsgun] giantsgun_life 1
execute as @a[hasitem={item=spyglass,data=512,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantsammo=1..,giants_ct=0}] at @s run execute as @e[type=boat,r=1.5,tag=giantsgun] at @s run tp @s ~~1000~
execute as @a[hasitem={item=spyglass,data=512,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantsammo=1..,giants_ct=0}] at @s run playsound sniper ~~~ @a[r=15] 1 1 0
execute as @a[hasitem={item=spyglass,data=512,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantsammo=1..,giants_ct=0}] at @s run scoreboard players remove @s giantsammo 1
execute as @a[hasitem={item=spyglass,data=512,location=slot.weapon.mainhand},tag=t:sneaking,scores={giantsammo=1..,giants_ct=0}] at @s run scoreboard players set @s giants_ct 20