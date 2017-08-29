generated
scanForTokenX13
	self recordMatch: #(23).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	^ self reportLastMatch