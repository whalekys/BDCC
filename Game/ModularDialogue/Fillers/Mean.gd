extends DialogueFiller

func _init():
	priority = 10

func getFormIDs() -> Array:
	return [
		"GuardCaughtOffLimits",
		"GuardCaughtOffLimitsFight",
		]

func canBeUsed(_id:String, _args:Dictionary, _form) -> bool:
	var guard = getChar(_args, _form.mainRole)
	var personality:Personality = guard.getPersonality()
	var meanness = personality.getStat(PersonalityStat.Mean)
	var subby = personality.getStat(PersonalityStat.Subby)
	
	if(meanness < 0.5):
		return false
	if(subby > 0.2):
		return false
	
	return true

func getText(_id:String, _args:Dictionary):
	if(_id == "GuardCaughtOffLimits"):
		return [
			"What’s a filthy [[SLUT]] like you doing sneaking around here?",
			"Look what we have here – a sneaky little [[SLUT]] thinking she can go wherever she wants.",
			"You think you’re clever, [[SLUT]]? This area’s off-limits to sluts like you.",
			"Another day, another [[SLUT]] trying to step out of line.",
			"Did you lose your way, you dumb [[SLUT]]? This is no place for a little bitch like you.",
			"What’s a little [[SLUT]] like you doing in a place like this? Trying to get some attention?",
			"I see we have a nosy little [[SLUT]] here, trying to see what she’s not supposed to.",
			"Did you think I wouldn’t catch you, you useless piece of trash?",
			"How stupid can you be? This area is off-limits, and you’re too dumb to know that?",
			"You’ve got to be the dumbest inmate here. Trespassing? Really?",
		]
	if(_id == "GuardCaughtOffLimitsFight"):
		return [
			"You’re in deep trouble now, you [[SLUT]]. I’m going to make you regret this.",
			"I’ve got a special punishment lined up for [[SLUTS]] like you who can’t follow simple rules.",
			"You should have crawled back to your cell while you could have.",
			"I’m sick of dealing with pests like you. Time to put you back in your place.",
			"You’re just a dumb prisoner who doesn’t know {inmate.his} place. I’ll teach you a lesson.",
			"You’re in for a world of pain, you stupid little [[SLUT]].",
			"You’re not just lost, you’re a complete waste of space, and I’m here to correct that.",
		]
