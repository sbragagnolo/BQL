generated
scanForTokenX15
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(27) ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	currentCharacter == $^
		ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	currentCharacter == $h
		ifTrue:
			[ ^ self scanForTokenX1 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(52) ].
	currentCharacter == $|
		ifTrue:
			[ ^ self scanForTokenX7 ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(47) ].
	currentCharacter == $~
		ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan9 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX6 ].
	(currentCharacter isSafeForHTTP or: [ currentCharacter == $$ ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch