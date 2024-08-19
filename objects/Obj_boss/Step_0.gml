if lock_in > 0 {lock_in -= 1}
if shot_cooldown > 0 {shot_cooldown -= 1}
image_angle += 1;
if global.cd > 0 
{
    global.cd -= 1;
}
else if global.cd < 0 {global.cd = 0;}

if global.boss_hp <= 0
{
    global.boss_defeated = true;
    instance_destroy(Obj_boss_canons);
    instance_destroy();
}

if global.cd = 0
{
    choice = round(random(1))
    if choice == 0
    {
        global.multishot_attack = true;
    }
    else if choice == 1
    {
        global.spin_attack = true;
        //global.shoot = false;
    }
}
else 
{
    //choice = -1;
    //global.shoot = true;
}
if global.spin_attack == true 
{
    if lock_in <= 0 {lock_in += 320; global.cd += 640;}
    if lock_in == 4 {global.spin_attack = false;}
    if shot_cooldown <= 0 
    {
        global.bullet_angle = image_angle;
        instance_create_layer(x, y, "Instances", Obj_enemy_bullet_boss);
        global.bullet_angle = image_angle + 90;
        instance_create_layer(x, y, "Instances", Obj_enemy_bullet_boss);
        global.bullet_angle = image_angle + 180;
        instance_create_layer(x, y, "Instances", Obj_enemy_bullet_boss);
        global.bullet_angle = image_angle + 270;
        instance_create_layer(x, y, "Instances", Obj_enemy_bullet_boss);
        shot_cooldown += 15;
    }
}