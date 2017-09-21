generated
scan8
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(71).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch