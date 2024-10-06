tag @a[tag=no_eshock,scores={eshock=1..}] remove no_eshock
scoreboard players add @a[scores={eshock=90..,ieshock=..1}] ieshock 2
tag @a[tag=no_ieshock,scores={ieshock=1..}] remove no_ieshock
effect @a[scores={eshock=15..}] slowness 1 0 true
effect @a[scores={eshock=30..}] slowness 1 1 true
effect @a[scores={eshock=45..}] slowness 1 2 true
effect @a[scores={eshock=60..}] slowness 1 3 true
effect @a[scores={eshock=75..}] slowness 1 4 true
scoreboard players set @a[scores={eshock=95..}] eshock 94
inputpermission set @a[scores={ieshock=1..}] movement disabled
effect @a[scores={ieshock=1..}] slowness 1 5 true
effect @a[tag=!no_all_attack,scores={ieshock=1..}] weakness 1 10 true
scoreboard players remove @a[scores={ieshock=1..}] ieshock 1
scoreboard players remove @a[scores={ieshock=!2..,eshock=1..}] eshock 3
inputpermission set @a[tag=!no_ieshock,scores={ieshock=0}] movement enabled
effect @a[tag=!no_ieshock,scores={ieshock=0}] slowness 0 6 true
effect @a[tag=!no_ieshock,scores={ieshock=0}] weakness 0 11 true
effect @a[tag=!no_eshock,scores={eshock=0}] slowness 0 1 true
tag @a[tag=!no_eshock,scores={eshock=0}] add no_eshock
tag @a[tag=!no_ieshock,scores={ieshock=0}] add no_ieshock