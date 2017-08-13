generated
scanForTokenX15
	self recordMatch: #(55).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	^ self reportLastMatch