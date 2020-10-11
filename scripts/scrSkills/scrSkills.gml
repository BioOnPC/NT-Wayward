function scrSkills() {
	var g = global;
	
	g.mut_list[mut_none] = {
		name: "NOTHING",
		text: "GET NOTHING",
		elig: 0,
		ttip: ""
	};
	
	g.mut_list[mut_rhino_skin] = {
		name: "RHINO SKIN",
		text: "+4 MAX HP",
		elig: 0,
		ttip: ""
	};

	skill_name[1] = "RHINO#SKIN"
	skill_text[1] = "+4 MAX HP"

	skill_name[2] = "EXTRA#FEET"
	skill_text[2] = "+SPEED"

	skill_name[3] = "PLUTONIUM#HUNGER"
	skill_text[3] = "+ATTRACT RANGE"

	skill_name[4] = "RABBIT#PAW"
	skill_text[4] = "+ITEM DROPS"

	skill_name[5] = "WASTELAND#PRINCE"
	skill_text[5] = "UPGRADES YOUR SPECIAL ATTACK"

	skill_name[6] = "LUCKY#SHOT"
	skill_text[6] = "SOME KILLS REGENERATE AMMO"

	skill_name[7] = "BLOOD#LUST"
	skill_text[7] = "SOME KILLS REGENERATE HP"

	skill_name[8] = "GAMMA#GUTS"
	skill_text[8] = "ENEMIES TOUCHING YOU TAKE DAMAGE"

	skill_name[9] = "EXTRA#STOMACH"
	skill_text[9] = "+HP FROM MEDKITS"

	skill_name[10] = "BACK#MUSCLE"
	skill_text[10] = "+MAX AMMO"

	skill_name[11] = "SCARIER#FACE"
	skill_text[11] = "-ENEMY HP"

	skill_name[12] = "EUPHORIA"
	skill_text[12] = "SLOWER ENEMY BULLETS"

	skill_name[13] = "LONG#ARMS"
	skill_text[13] = "+MELEE RANGE"


	maxskill = 13

	dir = 0
	repeat(maxskill+1)
	{skill_got[dir] = 0
	dir += 1}


}
