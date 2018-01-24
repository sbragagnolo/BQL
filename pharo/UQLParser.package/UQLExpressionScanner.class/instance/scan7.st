generated
scan7
	[ self recordMatch: #(78).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan6 ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch