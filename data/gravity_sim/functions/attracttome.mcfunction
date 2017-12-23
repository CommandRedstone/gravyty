tag @e[type=armor_stand] remove thisone
tag @s add thisone

execute store result score @s x run data get entity @s Pos[0] 10
execute store result score @s y run data get entity @s Pos[1] 10
execute store result score @s z run data get entity @s Pos[2] 10

execute as @e[type=armor_stand,tag=!thisone,tag=!new] at @s run function gravity_sim:attractedmass