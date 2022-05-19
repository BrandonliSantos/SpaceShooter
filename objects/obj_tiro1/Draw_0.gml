draw_self();

gpu_set_blendmode(bm_add);

draw_sprite_ext(spr_tiro_enemy_detalhe, image_index, x, y, image_xscale * 0.6, image_yscale * 0.6, image_angle, c_green, 0.6);
gpu_set_blendmode(bm_normal);
