tag @e[type=falling_block] remove thisone
tag @s add thisone

execute store result score @s x run data get entity @s Pos[0] 
execute store result score @s z run data get entity @s Pos[2] 

<<<<<<< HEAD
execute as @e[type=falling_block,tag=!thisone,tag=!new] at @s run function gravity_sim:attractedmass
scoreboard players operation @s calculation = @s mass
=======
execute as @e[type=armor_stand,tag=!thisone,tag=!new] at @s run function gravity_sim:attractedmass

execute at @s if block ~ ~-1 ~ air run kill @s

execute at @s[scores={mass=2}] run summon minecraft:falling_block ~ ~0.75 ~ {Glowing:1,Block:stone_button,NoGravity:1}
execute at @s[scores={mass=6..25}] run summon minecraft:falling_block ~ ~1 ~ {Glowing:1,Block:gravel,NoGravity:1}
execute at @s[scores={mass=26..75}] run summon minecraft:falling_block ~ ~1 ~ {Glowing:1,Block:stone,NoGravity:1}
execute at @s[scores={mass=76..250}] run summon minecraft:falling_block ~ ~1 ~ {Glowing:1,Block:ice,NoGravity:1}
execute at @s[scores={mass=251..}] run summon minecraft:falling_block ~ ~1 ~ {Glowing:1,Block:magma,NoGravity:1}
>>>>>>> parent of f3d7e0d... added y
