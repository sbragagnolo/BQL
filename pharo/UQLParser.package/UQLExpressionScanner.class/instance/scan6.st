generated
scan6
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(76).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch