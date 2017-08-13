generated
scanForTokenX17
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(53) ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $^
		ifTrue:
			[ ^ self scanForTokenX12 ].
	currentCharacter == $h
		ifTrue:
			[ ^ self scanForTokenX1 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(63) ].
	currentCharacter == $|
		ifTrue:
			[ ^ self scanForTokenX6 ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(62) ].
	currentCharacter == $~
		ifTrue: [ ^ self recordAndReportMatch: #(59) ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan6 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX11 ].
	(currentCharacter isSafeForHTTP or: [ currentCharacter == $$ ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch