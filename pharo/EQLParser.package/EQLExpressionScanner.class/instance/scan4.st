generated
scan4
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(62).
			self step.
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch