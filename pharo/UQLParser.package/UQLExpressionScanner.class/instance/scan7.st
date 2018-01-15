generated
scan7
	[ self recordMatch: #(76).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan6 ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch