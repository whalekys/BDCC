extends Species

func _init():
	id = Species.Feline
	
func getVisibleName():
	return "Feline"

func getDefaultLegs():
	return "felineleg"

func getDefaultBreasts():
	return "humanbreasts"

func isPlayable():
	return true

func getVisibleDescription():
	return "Cute fluffballs"