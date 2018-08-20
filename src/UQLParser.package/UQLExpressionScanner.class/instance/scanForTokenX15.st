generated
scanForTokenX15
	currentCharacter == $~
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	(currentCharacter between: $1 and: $9)
		ifTrue: [ ^ self scan7 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX7 ].
	(currentCharacter isSafeForHTTP or: [ currentCharacter == $$ ])
		ifTrue: [ [ self recordMatch: #(79).
			self step.
			currentCharacter == $:
				ifTrue:
					[ ^ self scanForTokenX2 ].
			currentCharacter == $$
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch