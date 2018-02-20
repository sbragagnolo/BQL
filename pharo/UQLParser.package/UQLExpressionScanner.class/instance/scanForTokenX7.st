generated
scanForTokenX7
	self recordMatch: #(32).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	^ self reportLastMatch