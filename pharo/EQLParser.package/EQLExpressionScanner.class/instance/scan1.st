generated
scan1
	[ self recordMatch: #(74).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan3 ].
	currentCharacter == $$
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ]
		whileTrue.
	^ self reportLastMatch