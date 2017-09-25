generated
scan8
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(69).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch