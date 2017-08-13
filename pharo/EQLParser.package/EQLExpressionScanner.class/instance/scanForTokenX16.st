generated
scanForTokenX16
	self recordMatch: #(59).
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(71).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch