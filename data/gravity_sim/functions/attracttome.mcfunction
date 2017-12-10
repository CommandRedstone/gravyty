tag @e[type=armor_stand] remove thisone
tag @s add thisone

execute store result score @s x run data get entity @s Pos[0]
execute store result score @s y run data get entity @s Pos[1]
execute store result score @s z run data get entity @s Pos[2]

execute as @e[type=armor_stand,tag=!thisone,tag=!new] at @s run function gravity_sim:attractedmass

execute at @s[scores={mass=2}] run summon minecraft:falling_block ~ ~0.75 ~ {Glowing:1,Block:stone_button,NoGravity:1}
execute at @s[scores={mass=6..25}] run summon minecraft:falling_block ~ ~1 ~ {Glowing:1,Block:gravel,NoGravity:1}
execute at @s[scores={mass=26..75}] run summon minecraft:falling_block ~ ~1 ~ {Glowing:1,Block:stone,NoGravity:1}
execute at @s[scores={mass=76..250}] run summon minecraft:falling_block ~ ~1 ~ {Glowing:1,Block:ice,NoGravity:1}
execute at @s[scores={mass=251..}] run summon minecraft:falling_block ~ ~1 ~ {Glowing:1,Block:magma,NoGravity:1}
