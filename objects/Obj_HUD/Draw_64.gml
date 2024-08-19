if instance_exists(Obj_player)
{
	//draw_sprite
	draw_sprite(Hud_element2, 1, 0, 0);
	draw_sprite(Healthbar_empty, 1, 65, 70);
	draw_sprite_ext(Healthbar, 1, 65, 70, max(0,global.hp_mass/global.hp_mass_max), 1, 0, c_white, 1);
	draw_sprite(Healthbar_border, 1, 65, 70);
	draw_text_transformed(210, 125, global.hp_mass, 3, 3, 0);
	draw_text_transformed(300, 125, "/", 3, 3, 0);
	draw_text_transformed(340, 125, global.hp_mass_max, 3, 3, 0);
	draw_sprite(Hud_element1, 1, 2600, 0);
	draw_text_transformed(2825, 100, Time, 5, 5, 0);
}
if instance_exists(Obj_boss) 
{
	draw_sprite(Healthbar_empty_boss, 1, 850, 2150);
	draw_sprite_ext(Healthbar_boss, 1, 850, 2150, max(0,global.boss_hp/global.boss_hp_max), 1, 0, c_white, 1);
	draw_sprite(Healthbar_border_boss, 1, 850, 2150);
}
if global.boss_defeated = true 
{
	draw_text_transformed(1500, 1200, "YOU WIN!", 3, 3, 0);
}