tag @a[tag=no_eshock,scores={eshock=1..}] remove no_eshock
scoreboard players add @a[scores={eshock=30..}] ieshock 1
tag @a[tag=no_ieshock,scores={ieshock=1..}] remove no_ieshock
effect @a[scores={eshock=5..}] slowness 1 0 true
effect @a[scores={eshock=10..}] slowness 1 1 true
effect @a[scores={eshock=15..}] slowness 1 2 true
effect @a[scores={eshock=20..}] slowness 1 3 true
effect @a[scores={eshock=25..}] slowness 1 4 true
scoreboard players set @a[scores={eshock=31..}] eshock 30
inputpermission set @a[scores={ieshock=1..}] movement disabled
inputpermission set @a[scores={ieshock=1..}] camera disabled
effect @a[scores={ieshock=1..}] slowness 1 5 true
tag @a[tag=!no_all_attack,scores={ieshock=1..}] add no_all_attack
scoreboard players remove @a[scores={ieshock=1..}] ieshock 1
scoreboard players remove @a[scores={ieshock=!1..,eshock=1..}] eshock 1
inputpermission set @a[tag=!no_ieshock,scores={ieshock=0}] movement enabled
inputpermission set @a[tag=!no_ieshock,scores={ieshock=0}] camera enabled
effect @a[tag=!no_ieshock,scores={ieshock=0}] slowness 0 6 true
effect @a[tag=!no_eshock,scores={eshock=0}] slowness 0 1 true
tag @a[tag=!no_eshock,scores={eshock=0}] add no_eshock
tag @a[tag=!no_ieshock,scores={ieshock=0}] add no_ieshock