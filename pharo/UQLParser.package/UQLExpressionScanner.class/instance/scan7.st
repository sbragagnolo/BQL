generated
scan7
	[ self recordMatch: #(74).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan6 ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch