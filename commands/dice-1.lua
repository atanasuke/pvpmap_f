execute as @a[hasitem={item=pvpmap:cursed_dice,location=slot.weapon.mainhand},scores={special=60..}] at @s unless entity @a[tag=!cursedice] run tag @s add cursedice
execute as @a[hasitem={item=pvpmap:cursed_dice,location=slot.weapon.mainhand},scores={special=60..},tag=cursedice] at @s run scoreboard players remove @s special 60
execute as @a[hasitem={item=pvpmap:cursed_dice,location=slot.weapon.mainhand},tag=cursedice] at @s run effect @s weakness 9 250 true
execute as @a[hasitem={item=pvpmap:cursed_dice,location=slot.weapon.mainhand},tag=cursedice] at @s run effect @s resistance 9 250 true
execute as @a[hasitem={item=pvpmap:cursed_dice,location=slot.weapon.mainhand},tag=cursedice] at @s run effect @s regeneration 9 250 true
execute as @a[hasitem={item=pvpmap:cursed_dice,location=slot.weapon.mainhand},tag=cursedice] at @s run title @s title "§cダメージは§4§l1d40!!! §r§cto §k???§r!!!"
execute as @a[hasitem={item=pvpmap:cursed_dice,location=slot.weapon.mainhand},tag=cursedice] at @s run playsound ambient.weather.thunder @a ~~~ 1 1 1
execute as @a[tag=cursedice,scores={dicesecond=40..80}] at @s run playsound random.pop @a ~~~ 1 1 1
execute as @a[tag=cursedice,scores={dicesecond=40..80}] at @s run scoreboard players random @s dicecount 1 40
execute as @a[tag=cursedice,scores={dicesecond=40..80}] at @s run titleraw @a title {"rawtext":[{"text":"§cダメージは§4§l "},{"scoreboard":{"name":"@s","objective":"dicecount"}},{"text":" §r§cto §k???§r!!!"}]}
execute as @a[tag=cursedice,scores={dicesecond=80}] at @s run playsound ambient.weather.thunder @a ~~~ 1 1 1
execute as @a[tag=cursedice,scores={dicesecond=110..150}] at @s run playsound random.pop @a ~~~ 1 1 1
execute as @a[tag=cursedice,scores={dicesecond=110..150}] at @s run scoreboard players random @s dicetype 1 4
execute as @a[tag=cursedice,scores={dicesecond=110..150,dicetype=1}] at @s run titleraw @a title {"rawtext":[{"text":"§cダメージは§4§l "},{"scoreboard":{"name":"@s","objective":"dicecount"}},{"text":" §r§cto §f§lSelf!!!"}]}
execute as @a[tag=cursedice,scores={dicesecond=110..150,dicetype=2}] at @s run titleraw @a title {"rawtext":[{"text":"§cダメージは§4§l "},{"scoreboard":{"name":"@s","objective":"dicecount"}},{"text":" §r§cto §e§lNear!!!"}]}
execute as @a[tag=cursedice,scores={dicesecond=110..150,dicetype=3}] at @s run titleraw @a title {"rawtext":[{"text":"§cダメージは§4§l "},{"scoreboard":{"name":"@s","objective":"dicecount"}},{"text":" §r§cto §c§lAround!!!"}]}
execute as @a[tag=cursedice,scores={dicesecond=110..150,dicetype=4}] at @s run titleraw @a title {"rawtext":[{"text":"§cダメージは§4§l "},{"scoreboard":{"name":"@s","objective":"dicecount"}},{"text":" §r§cto §4§lEVERYONE!!!"}]}
execute as @a[tag=cursedice,scores={dicesecond=150}] at @s run playsound ambient.weather.thunder @a ~~~ 1 1 1
execute as @a[tag=cursedice,scores={dicesecond=180,dicetype=1}] at @s run tag @s add cursed
execute as @a[tag=cursedice,scores={dicesecond=180,dicetype=2}] at @s run tag @p add cursed
execute as @a[tag=cursedice,scores={dicesecond=180,dicetype=3}] at @s run tag @a(tag=!curseddice,r=15) add cursed
execute as @a[tag=cursedice,scores={dicesecond=180,dicetype=4}] at @s run tag @a add cursed
execute as @a[tag=cursedice,scores={dicesecond=181..,dicecount=1..}] at @s run damage 1 @a[tag=cursed] self_destruct
execute as @a[tag=cursed] at @s run particle minecraft:end_chest ~~1~
execute as @a[tag=cursedice,scores={dicesecond=181..,dicecount=1..}] at @s run scoreboard players remove @s dicecount 1
tag @a[tag=cursedice,scores={dicesecond=181..,dicecount=0}] remove cursedice
execute as @a[scores={dicesecond=181..,dicecount=0}] at @s run tag @a remove cursed
scoreboard players set @a[scores={dicesecond=181..,dicecount=0}] dicesecond 0
