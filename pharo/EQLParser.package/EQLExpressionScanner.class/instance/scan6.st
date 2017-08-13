generated
scan6
	[ self recordMatch: #(69).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan5 ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch