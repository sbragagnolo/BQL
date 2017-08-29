generated
scan4
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(67).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch