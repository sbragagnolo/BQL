generated
scanForToken
	self step.
	currentCharacter == $!
		ifTrue:
			[ ^ self scanForTokenX11 ].
	currentCharacter == $"
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $%
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $&
		ifTrue:
			[ ^ self scanForTokenX14 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan5 ].
	^ self scanForTokenX16