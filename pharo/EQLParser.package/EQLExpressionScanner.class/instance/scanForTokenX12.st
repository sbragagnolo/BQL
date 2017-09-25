generated
scanForTokenX12
	self recordMatch: #(12).
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(69).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch