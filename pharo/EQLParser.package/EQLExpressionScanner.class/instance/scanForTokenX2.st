generated
scanForTokenX2
	self recordMatch: #(11).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan4 ].
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(78).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	^ self reportLastMatch