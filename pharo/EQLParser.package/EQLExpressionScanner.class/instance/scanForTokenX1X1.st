generated
scanForTokenX1X1
	self recordMatch: #(74).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan3 ].
	currentCharacter == $x
		ifTrue: [ self recordMatch: #(74).
			self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan7 ].
			currentCharacter == $'
				ifTrue: [ ^ self scan8 ].
			currentCharacter == $.
				ifTrue: [ ^ self scan2 ].
			currentCharacter == $:
				ifTrue: [ ^ self scan3 ].
			(currentCharacter == $$
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ])
				ifTrue: [ ^ self scan1 ].
			^ self reportLastMatch ].
	(currentCharacter == $$
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $w)
										or: [ currentCharacter between: $y and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch