generated
scanForToken
	self step.
	currentCharacter == $!
		ifTrue:
			[ ^ self scanForTokenX11 ].
	currentCharacter == $"
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $%
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $&
		ifTrue:
			[ ^ self scanForTokenX14 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan3 ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	currentCharacter == $*
		ifTrue:
			[ ^ self scanForTokenX10 ].
	currentCharacter == $+
		ifTrue:
			[ ^ self scanForTokenX9 ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scanForTokenX4 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scanForTokenX12 ].
	^ self scanForTokenX16