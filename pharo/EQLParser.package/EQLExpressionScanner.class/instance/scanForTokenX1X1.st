generated
scanForTokenX1X1
	self recordMatch: #(76).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan4 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan5 ].
	currentCharacter == $x
		ifTrue: [ self recordMatch: #(76).
			self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan11 ].
			currentCharacter == $'
				ifTrue: [ ^ self scan12 ].
			currentCharacter == $.
				ifTrue: [ ^ self scan4 ].
			currentCharacter == $:
				ifTrue: [ ^ self scan5 ].
			(currentCharacter == $$
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ])
				ifTrue: [ ^ self scan3 ].
			^ self reportLastMatch ].
	(currentCharacter == $$
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $w)
										or: [ currentCharacter between: $y and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch