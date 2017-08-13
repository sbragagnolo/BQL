generated
scanForTokenX16
	self recordMatch: #(60).
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(70).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch