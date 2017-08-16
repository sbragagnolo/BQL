generated
scanForTokenX13
	self recordMatch: #(21).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	^ self reportLastMatch