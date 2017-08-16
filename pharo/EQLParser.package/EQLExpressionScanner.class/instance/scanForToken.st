generated
scanForToken
	self step.
	currentCharacter == $!
		ifTrue:
			[ ^ self scanForTokenX15 ].
	currentCharacter == $"
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $%
		ifTrue:
			[ ^ self scanForTokenX14 ].
	currentCharacter == $&
		ifTrue:
			[ ^ self scanForTokenX10 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan6 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(55) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	^ self scanForTokenX18