generated
scan5
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(70).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch