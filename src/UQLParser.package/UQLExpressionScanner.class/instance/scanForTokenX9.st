generated
scanForTokenX9
	self recordMatch: #(39).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	^ self reportLastMatch