scoreboard players operation @s calculations2 = @s xrelative
scoreboard players operation @s calculations2 *= @s calculations2

scoreboard players operation @s calculations1 = @s yrelative
scoreboard players operation @s calculations1 *= @s calculations1

scoreboard players operation @s calculations = @s zrelative
scoreboard players operation @s calculations *= @s calculations

scoreboard players operation @s calculations2 += @s calculations
scoreboard players operation @s calculations2 += @s calculations1


#add x velocity 
scoreboard players operation @s calculations = @s xrelative
scoreboard players operation @s calculations *= @e[type=armor_stand,tag=thisone] mass
scoreboard players operation @s calculations /= @s calculations2
scoreboard players operation @s calculations *= 10000 number
scoreboard players operation @s xvelocity += @s calculations


#add y velocity
scoreboard players operation @s calculations = @s yrelative
scoreboard players operation @s calculations *= @e[type=armor_stand,tag=thisone] mass
scoreboard players operation @s calculations /= @s calculations2
scoreboard players operation @s calculations *= 10000 number
scoreboard players operation @s yvelocity += @s calculations


#add z velocity
scoreboard players operation @s calculations = @s zrelative
scoreboard players operation @s calculations *= @e[type=armor_stand,tag=thisone] mass
scoreboard players operation @s calculations /= @s calculations2
scoreboard players operation @s calculations *= 10000 number
scoreboard players operation @s zvelocity += @s calculations

#f= m1 * a
#and = m1 * m2 / r^2
#so m1 * a = m2 * m1 / r^2
#so we can simplify a to be equal to m2/r^2)