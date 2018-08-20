generated
scanForTokenX1
	self recordMatch: #(75).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan6 ].
	(currentCharacter between: $0 and: $9)
		ifTrue: [ ^ self scan7 ].
	('Xx' includes: currentCharacter)
		ifTrue: [ self step.
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(76).
					self step.
					(currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ] ].
	^ self reportLastMatch