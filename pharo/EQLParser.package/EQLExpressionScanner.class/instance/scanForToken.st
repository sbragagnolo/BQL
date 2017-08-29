generated
scanForToken
	self step.
	currentCharacter == $!
		ifTrue:
			[ ^ self scanForTokenX13 ].
	currentCharacter == $"
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $%
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter == $&
		ifTrue:
			[ ^ self scanForTokenX12 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan5 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	^ self scanForTokenX16