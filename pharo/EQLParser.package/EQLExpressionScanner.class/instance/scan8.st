generated
scan8
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(58).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch