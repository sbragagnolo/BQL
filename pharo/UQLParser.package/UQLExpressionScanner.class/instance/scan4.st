generated
scan4
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(82).
			self step.
			currentCharacter == $'
				ifTrue: [ ^ self recordAndReportMatch: #(82) ].
			(currentCharacter == Character space or: [ currentCharacter == $\ ])
				ifTrue: [ ^ self scan4 ].
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ (currentCharacter
								between: (Character value: 14)
								and: Character arrowDown)
								or: [ (currentCharacter between: $! and: $&)
										or: [ (currentCharacter between: $( and: $[)
												or: [ currentCharacter >= $] ] ] ] ] ])
				ifTrue: [ ^ self scan3 ].
			^ self reportLastMatch ].
	currentCharacter == Character space or: [ currentCharacter == $\ ] ]
		whileTrue.
	^ self scan3