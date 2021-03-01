function rpg:effects
execute as @e[type=zombie,tag=!done,sort=random] at @s run function rpg:rng
execute as @e[type=zombie,tag=!done,limit=1,sort=random,tag=common] run function rpg:summon/zombie/common_zombie
execute as @e[type=zombie,tag=!done,limit=1,sort=random,tag=uncommon] run function rpg:summon/zombie/uncommon_zombie
execute as @e[type=zombie,tag=!done,limit=1,sort=random,tag=rare] run function rpg:summon/zombie/rare_zombie
execute as @e[type=zombie,tag=!done,limit=1,sort=random,tag=legendary] run function rpg:summon/zombie/legendary_zombie
scoreboard players add rngplayer rng 1
execute if score rngplayer rng matches 100 run scoreboard players set rngplayer rng 0