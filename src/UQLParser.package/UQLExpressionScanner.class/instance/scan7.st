generated
scan7
	[ self recordMatch: #(78).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan6 ].
	currentCharacter between: $0 and: $9 ] whileTrue.
	^ self reportLastMatch