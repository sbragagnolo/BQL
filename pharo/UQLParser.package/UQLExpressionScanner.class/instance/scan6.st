generated
scan6
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(78).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch