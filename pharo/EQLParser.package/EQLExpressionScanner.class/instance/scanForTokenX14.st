generated
scanForTokenX14
	self recordMatch: #(34).
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(63).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch