tag @s remove new

execute at @s[tag=size1] run summon falling_block ~ ~ ~ {NoGravity:1,Time:1,Tags:[new,size1],Glowing:1,BlockState:{Name:"stone",Properties:{state:"0"}}}
execute at @s[tag=size2] run summon falling_block ~ ~ ~ {NoGravity:1,Time:1,Tags:[new,size2],Glowing:1,BlockState:{Name:"stone",Properties:{state:"1"}}}
execute at @s[tag=size3] run summon falling_block ~ ~ ~ {NoGravity:1,Time:1,Tags:[new,size3],Glowing:1,BlockState:{Name:"stone",Properties:{state:"2"}}}
execute at @s[tag=size5] run summon falling_block ~ ~ ~ {NoGravity:1,Time:1,Tags:[new,size5],Glowing:1,BlockState:{Name:"stone",Properties:{state:"3"}}}
execute at @s[tag=size10] run summon falling_block ~ ~ ~ {NoGravity:1,Time:1,Tags:[new,size10],Glowing:1,BlockState:{Name:"stone",Properties:{state:"4"}}}
execute at @s[tag=size50] run summon falling_block ~ ~ ~ {NoGravity:1,Time:1,Tags:[new,size50],Glowing:1,BlockState:{Name:"stone",Properties:{state:"5"}}}
execute at @s[tag=size100] run summon falling_block ~ ~ ~ {NoGravity:1,Time:1,Tags:[new,size100],Glowing:1,BlockState:{Name:"stone",Properties:{state:"6"}}}
execute at @s[tag=size500] run summon falling_block ~ ~ ~ {NoGravity:1,Time:1,Tags:[new,size500],Glowing:1,BlockState:{Name:"stone",Properties:{state:"7"}}}

execute as @e[type=falling_block,tag=new] at @s run function gravity_sim:setscore
kill @s