generated
scanForTokenX12
	self recordMatch: #(15).
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(77).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch