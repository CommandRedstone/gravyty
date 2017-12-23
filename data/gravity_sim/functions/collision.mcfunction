scoreboard players operation @s collisionmass += @e[type=armor_stand,distance=..0.5] mass

#calculate force vectors from mass * velocity

execute as @e[type=armor_stand,distance=..0.5] run scoreboard players operation @s collisionxv = @s xvelocity
execute as @e[type=armor_stand,distance=..0.5] run scoreboard players operation @s collisionyv = @s yvelocity
execute as @e[type=armor_stand,distance=..0.5] run scoreboard players operation @s collisionzv = @s zvelocity
execute as @e[type=armor_stand,distance=..0.5] run scoreboard players operation @s collisionxv /= 1000 number
execute as @e[type=armor_stand,distance=..0.5] run scoreboard players operation @s collisionyv /= 1000 number
execute as @e[type=armor_stand,distance=..0.5] run scoreboard players operation @s collisionzv /= 1000 number

 
execute as @e[type=armor_stand,distance=..0.5] run scoreboard players operation @s collisionxv *= @s mass
execute as @e[type=armor_stand,distance=..0.5] run scoreboard players operation @s collisionyv *= @s mass
execute as @e[type=armor_stand,distance=..0.5] run scoreboard players operation @s collisionzv *= @s mass


#calculate average (location * mass)
execute as @e[type=armor_stand,distance=..0.5] run execute store result score @s collisionxr run data get entity @s Pos[0] 1000
execute as @e[type=armor_stand,distance=..0.5] run execute store result score @s collisionyr run data get entity @s Pos[1] 1000
execute as @e[type=armor_stand,distance=..0.5] run execute store result score @s collisionzr run data get entity @s Pos[2] 1000
 
execute as @e[type=armor_stand,distance=..0.5] run scoreboard players operation @s collisionxr *= @s mass
execute as @e[type=armor_stand,distance=..0.5] run scoreboard players operation @s collisionyr *= @s mass
execute as @e[type=armor_stand,distance=..0.5] run scoreboard players operation @s collisionzr *= @s mass



#divide by total mass to get velocity (from f=ma, thereforce a = f/m)
scoreboard players operation @s collisionxv += @e[type=armor_stand,distance=0.01..0.5] collisionxv
scoreboard players operation @s collisionyv += @e[type=armor_stand,distance=0.01..0.5] collisionyv
scoreboard players operation @s collisionzv += @e[type=armor_stand,distance=0.01..0.5] collisionzv

scoreboard players operation @s collisionxv /= @s collisionmass
scoreboard players operation @s collisionyv /= @s collisionmass
scoreboard players operation @s collisionzv /= @s collisionmass

tag @e[type=armor_stand,distance=..0.5] add Collided
tag @e[type=armor_stand,distance=..0.5] add Collision



#divide locations by mass because idk
scoreboard players operation @s collisionxr += @e[type=armor_stand,distance=0.01..0.5] collisionxr
scoreboard players operation @s collisionyr += @e[type=armor_stand,distance=0.01..0.5] collisionyr
scoreboard players operation @s collisionzr += @e[type=armor_stand,distance=0.01..0.5] collisionzr
scoreboard players operation @s collisionxr /= @s collisionmass
scoreboard players operation @s collisionyr /= @s collisionmass
scoreboard players operation @s collisionzr /= @s collisionmass

#summon new planet and give stats
summon armor_stand ~ ~ ~ {Invisible:1,Tags:[CollisionP,Collision],ArmorItems:[{},{},{},{id:"magma_block",Count:1}]}

scoreboard players operation @e[type=armor_stand,tag=CollisionP,limit=1] mass = @s collisionmass
scoreboard players operation @e[type=armor_stand,tag=CollisionP,limit=1] xvelocity = @s collisionxv
scoreboard players operation @e[type=armor_stand,tag=CollisionP,limit=1] yvelocity = @s collisionyv
scoreboard players operation @e[type=armor_stand,tag=CollisionP,limit=1] zvelocity = @s collisionzv
scoreboard players operation @e[type=armor_stand,tag=CollisionP,limit=1] xvelocity *= 1000 number
scoreboard players operation @e[type=armor_stand,tag=CollisionP,limit=1] yvelocity *= 1000 number
scoreboard players operation @e[type=armor_stand,tag=CollisionP,limit=1] zvelocity *= 1000 number
tellraw @a [{"text":"\n"},{"text":"x: "},{"score":{"name":"@s","objective":"collisionxr"}},{"text":" y: "},{"score":{"name":"@s","objective":"collisionyr"}},{"text":" z: "},{"score":{"name":"@s","objective":"collisionzr"}},{"text":" mass: "},{"score":{"name":"@s","objective":"collisionmass"}}]
execute store result entity @e[type=armor_stand,limit=1,tag=CollisionP] Pos[0] double 0.001 run scoreboard players get @s collisionxr
execute store result entity @e[type=armor_stand,limit=1,tag=CollisionP] Pos[1] double 0.001 run scoreboard players get @s collisionyr
execute store result entity @e[type=armor_stand,limit=1,tag=CollisionP] Pos[2] double 0.001 run scoreboard players get @s collisionzr



tag @e[tag=CollisionP] remove CollisionP
