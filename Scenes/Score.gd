extends Label

var scorePlayer1 = 0
var scorePlayer2 = 0

func _process(delta):
	self.text = str(scorePlayer1, ' - ', scorePlayer2)