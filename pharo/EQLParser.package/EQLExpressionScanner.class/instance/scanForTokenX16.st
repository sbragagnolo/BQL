generated
scanForTokenX16
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	currentCharacter == $*
		ifTrue:
			[ ^ self scanForTokenX10 ].
	currentCharacter == $+
		ifTrue:
			[ ^ self scanForTokenX9 ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $-
		ifTrue:
			[ ^ self scanForTokenX4 ].
	currentCharacter == $.
		ifTrue:
			[ ^ self scanForTokenX12 ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scanForTokenX2 ].
	currentCharacter == $0
		ifTrue:
			[ ^ self scanForTokenX3 ].
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(17) ].
	currentCharacter == $<
		ifTrue:
			[ ^ self scanForTokenX5 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scanForTokenX8 ].
	^ self scanForTokenX15