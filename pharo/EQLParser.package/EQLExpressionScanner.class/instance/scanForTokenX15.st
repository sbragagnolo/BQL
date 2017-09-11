generated
scanForTokenX15
	currentCharacter == $>
		ifTrue:
			[ ^ self scanForTokenX7 ].
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	currentCharacter == $h
		ifTrue:
			[ ^ self scanForTokenX1 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(43) ].
	currentCharacter == $|
		ifTrue:
			[ ^ self scanForTokenX13 ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(46) ].
	currentCharacter == $~
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan9 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX6 ].
	(currentCharacter isSafeForHTTP or: [ currentCharacter == $$ ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch