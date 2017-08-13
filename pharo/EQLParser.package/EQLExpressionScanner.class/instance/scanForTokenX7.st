generated
scanForTokenX7
	self recordMatch: #(26).
	self step.
	currentCharacter == $-
		ifTrue: [ ^ self recordAndReportMatch: #(57) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	^ self reportLastMatch