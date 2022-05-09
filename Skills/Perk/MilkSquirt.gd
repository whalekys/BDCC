extends PerkBase

func _init():
	id = Perk.MilkSquirt
	skillGroup = Skill.Milking

func getVisibleName():
	return "Battle Cow"

func getVisibleDescription():
	return "You gain the ability to squeeze your breasts to blind the opponent with your milk!"

func getCost():
	return 1
func getSkillTier():
	return 0

func getPicture():
	return "res://UI/StatusEffectsPanel/images/blind.png"

func addsAttacks():
	return ["SqueezeBreasts"]