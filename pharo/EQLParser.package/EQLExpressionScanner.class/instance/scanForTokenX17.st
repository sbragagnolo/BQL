generated
scanForTokenX17
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(53) ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $^
		ifTrue:
			[ ^ self scanForTokenX12 ].
	currentCharacter == $h
		ifTrue:
			[ ^ self scanForTokenX1 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(67) ].
	currentCharacter == $|
		ifTrue:
			[ ^ self scanForTokenX6 ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(64) ].
	currentCharacter == $~
		ifTrue: [ ^ self recordAndReportMatch: #(60) ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan6 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX11 ].
	(currentCharacter isSafeForHTTP or: [ currentCharacter == $$ ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch