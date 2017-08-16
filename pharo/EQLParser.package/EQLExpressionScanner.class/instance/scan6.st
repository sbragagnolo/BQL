generated
scan6
	[ self step.
	currentCharacter == $'
		ifTrue: [ ^ self recordAndReportMatch: #(80) ].
	(currentCharacter == Character space or: [ currentCharacter == $\ ])
		ifTrue: [ ^ self scan7 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter
						between: (Character value: 14)
						and: Character arrowDown)
						or: [ (currentCharacter between: $! and: $&)
								or: [ (currentCharacter between: $( and: $[)
										or: [ currentCharacter >= $] ] ] ] ] ] ] whileTrue.
	^ self reportLastMatch