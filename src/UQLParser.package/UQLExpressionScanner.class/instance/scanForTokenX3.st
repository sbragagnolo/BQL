generated
scanForTokenX3
	self recordMatch: #(10).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan5 ].
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(84).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue ].
	^ self reportLastMatch