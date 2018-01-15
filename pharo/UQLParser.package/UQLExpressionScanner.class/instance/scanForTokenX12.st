generated
scanForTokenX12
	self recordMatch: #(19).
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(78).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch