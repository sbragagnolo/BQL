generated
scanForTokenX16
	self recordMatch: #(56).
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(73).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch