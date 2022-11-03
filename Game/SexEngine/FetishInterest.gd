extends Object
class_name FetishInterest

const Hates = "Hates"
const ReallyDislikes = "ReallyDislikes"
const Dislikes = "Dislikes"
const SlightlyDislikes = "SlightlyDislikes"
const Neutral = "Neutral"
const SlightlyLikes = "SlightlyLikes"
const Likes = "Likes"
const ReallyLikes = "ReallyLikes"
const Loves = "Loves"

static func getScore(interest):
	match(interest):
		Hates:
			return -1.0
		ReallyDislikes:
			return -0.75
		Dislikes:
			return -0.5
		SlightlyDislikes:
			return -0.25
		Neutral:
			return 0.0
		SlightlyLikes:
			return 0.25
		Likes:
			return 0.5
		ReallyLikes:
			return 0.75
		Loves:
			return 1.0
	return 0.0
		
static func getAll():
	return [Hates, ReallyDislikes, Dislikes, SlightlyDislikes, Neutral, SlightlyLikes, Likes, ReallyLikes, Loves]

static func getColorString(interest):
	if(interest == Hates):
		return "#FF554C"
	if(interest == ReallyDislikes):
		return "#FF837A"
	if(interest == Dislikes):
		return "#FFB0A0"
	if(interest == SlightlyDislikes):
		return "#FFCED2"
	if(interest == Neutral):
		return "#D5CEFF"
	if(interest == SlightlyLikes):
		return "#FFC9FE"
	if(interest == Likes):
		return "#FFBAF8"
	if(interest == ReallyLikes):
		return "#FF9EE3"
	if(interest == Loves):
		return "#FF63E7"
	
	return "#FFFFFF"
	
static func getVisibleName(interest):
	if(interest == Hates):
		return "hates"
	if(interest == ReallyDislikes):
		return "really dislikes"
	if(interest == Dislikes):
		return "dislikes"
	if(interest == SlightlyDislikes):
		return "slightly dislikes"
	if(interest == Neutral):
		return "neutral"
	if(interest == SlightlyLikes):
		return "kinda likes"
	if(interest == Likes):
		return "likes"
	if(interest == ReallyLikes):
		return "really likes"
	if(interest == Loves):
		return "loves"
	return "error:"+str(interest)
