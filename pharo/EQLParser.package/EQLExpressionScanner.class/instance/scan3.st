generated
scan3
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(75).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch