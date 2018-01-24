generated
scanForTokenX15
	currentCharacter == $~
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan7 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX6 ].
	(currentCharacter isSafeForHTTP or: [ currentCharacter == $$ ])
		ifTrue: [ [ self recordMatch: #(82).
			self step.
			currentCharacter == $:
				ifTrue:
					[ ^ self scanForTokenX1 ].
			currentCharacter == $$
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch