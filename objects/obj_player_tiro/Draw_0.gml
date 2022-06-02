draw_self();


gpu_set_blendmode(bm_add);
draw_sprite_ext(brilho, image_index, x, y, image_xscale * 0.6, image_yscale * 0.6, image_angle, corTiro, 0.6);
gpu_set_blendmode(bm_normal);
