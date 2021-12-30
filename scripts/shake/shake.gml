/// @description shake(amount)
/// @param amount
function shake(amt){
	 // ADJUST FOR SCREENSHAKE OPTIONS LATER
	with(VisCont) {
		xshake = orandom(amt);
		yshake = orandom(amt);
	}
}