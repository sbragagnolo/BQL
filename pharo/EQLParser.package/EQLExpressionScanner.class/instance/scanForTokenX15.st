generated
scanForTokenX15
	self recordMatch: #(60).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	^ self reportLastMatch