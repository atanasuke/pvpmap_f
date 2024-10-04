scoreboard players operation @a[scores={bleeding=1..}] math1 = @a[scores={bleeding=1..}] bleeding 
scoreboard players operation @a[scores={bleeding=1..}] math1 /= "dummy1000" math1
scoreboard players operation @a[scores={bleeding=1..}] bloodtierkari = @a[scores={bleeding=1..}] math1
scoreboard players operation @a[scores={bleeding=1..}] bleeding %= "dummy1000" math1
execute as @a[scores={bleeding=1..}] at @s if score @s bleedtier <= @s bloodtierkari run scoreboard players operation @a[scores={bleeding=1..}] bloodsecond = @a[scores={bleeding=1..}] bleeding
scoreboard players operation @a[scores={bleeding=1..}] bloodtier < @a[scores={bleeding=1..}] bloodtierkari
scoreboard players set @a[scores={bleeding=1..}] bleeding 0
scoreboard players set @a[scores={math1=1..}] math1 0
scoreboard players set @a[scores={bloodtierkari=1..}] bloodtierkari 0
scoreboard players add @a[scores={bloodsecond=1..}] bloodtime 1
scoreboard players remove @a[scores={bloodsecond=1..}] bloodsecond 1
scoreboard players remove @a[scores={bloodtier=1,bloodtime=20}] blood 1
effect @a[scores={bloodtier=1}] bad_omen 1 0 true
scoreboard players set @a[scores={bloodtier=1,bloodtime=20}] bloodtime 0
scoreboard players remove @a[scores={bloodtier=2,bloodtime=10}] blood 1
effect @a[scores={bloodtier=2}] bad_omen 1 1 true
scoreboard players set @a[scores={bloodtier=2,bloodtime=10}] bloodtime 0
scoreboard players remove @a[scores={bloodtier=3,bloodtime=5}] blood 1
effect @a[scores={bloodtier=3}] bad_omen 1 2 true
scoreboard players set @a[scores={bloodtier=3,bloodtime=5}] bloodtime 0
scoreboard players remove @a[scores={bloodtier=4,bloodtime=3}] blood 1
effect @a[scores={bloodtier=4}] bad_omen 1 3 true
scoreboard players set @a[scores={bloodtier=4,bloodtime=3}] bloodtime 0
scoreboard players remove @a[scores={bloodtier=5,bloodtime=2}] blood 1
effect @a[scores={bloodtier=5}] bad_omen 1 4 true
scoreboard players set @a[scores={bloodtier=5,bloodtime=2}] bloodtime 0
scoreboard players remove @a[scores={bloodtier=6..,bloodtime=1}] blood 1
effect @a[scores={bloodtier=6}] bad_omen 1 5 true
scoreboard players set @a[scores={bloodtier=6..,bloodtime=1}] bloodtime 0
effect @a[scores={bloodsecond=0}] bad_omen 0 6 true
scoreboard players set @a[scores={bloodsecond=0}] bloodtier 0