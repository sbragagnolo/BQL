generated
scanForToken
	self step.
	currentCharacter == $!
		ifTrue:
			[ ^ self scanForTokenX12 ].
	currentCharacter == $"
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $%
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter == $&
		ifTrue:
			[ ^ self scanForTokenX14 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan3 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	currentCharacter == $*
		ifTrue:
			[ ^ self scanForTokenX11 ].
	currentCharacter == $+
		ifTrue:
			[ ^ self scanForTokenX10 ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(26) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scanForTokenX4 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scanForTokenX6 ].
	^ self scanForTokenX16