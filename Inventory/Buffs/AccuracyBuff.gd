extends BuffBase

var amount = 0

func _init():
	id = Buff.AccuracyBuff

func initBuff(_args):
	amount = _args[0]

func getVisibleDescription():
	var text = str(amount)
	if(amount > 0):
		text = "+"+text
	return "Accuracy "+text+"%"

func apply(_buffHolder):
	_buffHolder.accuracy += (amount/100.0)

func getBuffColor():
	if(amount < 0):
		return Color.red
	return DamageType.getColor(DamageType.Physical)