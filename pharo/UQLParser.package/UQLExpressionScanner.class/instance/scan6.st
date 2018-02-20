generated
scan6
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(77).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch