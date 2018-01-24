generated
scanForTokenX16
	currentCharacter == $/
		ifTrue:
			[ ^ self scanForTokenX2 ].
	currentCharacter == $0
		ifTrue:
			[ ^ self scanForTokenX3 ].
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(19) ].
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
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(44) ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $|
		ifTrue:
			[ ^ self scanForTokenX13 ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	^ self scanForTokenX15