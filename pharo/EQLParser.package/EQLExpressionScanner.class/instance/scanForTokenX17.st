generated
scanForTokenX17
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(62) ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	currentCharacter == $^
		ifTrue:
			[ ^ self scanForTokenX12 ].
	currentCharacter == $h
		ifTrue:
			[ ^ self scanForTokenX1 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(68) ].
	currentCharacter == $|
		ifTrue:
			[ ^ self scanForTokenX6 ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(69) ].
	currentCharacter == $~
		ifTrue: [ ^ self recordAndReportMatch: #(57) ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan10 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX11 ].
	(currentCharacter isSafeForHTTP or: [ currentCharacter == $$ ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch