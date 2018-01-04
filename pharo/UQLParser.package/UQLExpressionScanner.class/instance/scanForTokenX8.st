generated
scanForTokenX8
	self recordMatch: #(34).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	^ self reportLastMatch