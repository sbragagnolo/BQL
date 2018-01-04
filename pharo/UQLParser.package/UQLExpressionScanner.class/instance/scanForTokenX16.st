generated
scanForTokenX16
	currentCharacter == $/
		ifTrue:
			[ ^ self scanForTokenX2 ].
	currentCharacter == $0
		ifTrue:
			[ ^ self scanForTokenX3 ].
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(27) ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	currentCharacter == $<
		ifTrue:
			[ ^ self scanForTokenX5 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scanForTokenX8 ].
	currentCharacter == $>
		ifTrue:
			[ ^ self scanForTokenX7 ].
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $|
		ifTrue:
			[ ^ self scanForTokenX13 ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self scanForTokenX15