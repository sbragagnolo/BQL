generated
scan3
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(74).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch