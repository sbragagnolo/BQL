generated
scan9
	[ self recordMatch: #(69).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan8 ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch