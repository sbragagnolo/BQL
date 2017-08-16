generated
scan9
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(73).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch