generated
scanForTokenX14
	self recordMatch: #(11).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	^ self reportLastMatch