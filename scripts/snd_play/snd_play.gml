/// @description  snd_play(sound, volume, pitch, loop)
/// @param sound
/// @param volume
/// @param pitch
/// @param loop
function snd_play(snd, volume, pitch, loop){
	 // THIS WHOLE SHIT NEEDS TO BE REWRITTEN LATER. LOOK INTO EMITTERS??
	var _z = 0;
	if(variable_instance_exists(self, "z")) _z = z;
	audio_sound_gain(snd, volume, 0);
	audio_sound_pitch(snd, pitch);
	audio_play_sound_at(snd, x, y, _z, 120, 320, 0, loop, 1);
}