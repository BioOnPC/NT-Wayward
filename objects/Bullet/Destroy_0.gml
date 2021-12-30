with(instance_create(x + (hspeed * ts), y + (vspeed * ts), projdie)) {
	sprite_index = sprBulletHit;
	bloom = 2;
}
snd_play(sndEmpty, 0.03, 1 + random(0.3), 0);