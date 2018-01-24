generated
scanForTokenX12
	self recordMatch: #(9).
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(80).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch