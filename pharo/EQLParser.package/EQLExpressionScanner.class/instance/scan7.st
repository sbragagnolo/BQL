generated
scan7
	[ self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(80).
			self step.
			currentCharacter == $'
				ifTrue: [ ^ self recordAndReportMatch: #(80) ].
			(currentCharacter == Character space or: [ currentCharacter == $\ ])
				ifTrue: [ ^ self scan7 ].
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ (currentCharacter
								between: (Character value: 14)
								and: Character arrowDown)
								or: [ (currentCharacter between: $! and: $&)
										or: [ (currentCharacter between: $( and: $[)
												or: [ currentCharacter >= $] ] ] ] ] ])
				ifTrue: [ ^ self scan6 ].
			^ self reportLastMatch ].
	currentCharacter == Character space or: [ currentCharacter == $\ ] ]
		whileTrue.
	^ self scan6