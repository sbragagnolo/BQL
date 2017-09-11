generated
scanForTokenX12
	self recordMatch: #(47).
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(58).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch