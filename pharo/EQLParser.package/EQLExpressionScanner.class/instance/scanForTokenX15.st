generated
scanForTokenX15
	currentCharacter == $>
		ifTrue:
			[ ^ self scanForTokenX7 ].
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(35) ].
	currentCharacter == $h
		ifTrue:
			[ ^ self scanForTokenX1 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(34) ].
	currentCharacter == $|
		ifTrue:
			[ ^ self scanForTokenX13 ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(40) ].
	currentCharacter == $~
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan9 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX6 ].
	(currentCharacter isSafeForHTTP or: [ currentCharacter == $$ ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch