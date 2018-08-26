generated
scanForTokenX9
	self recordMatch: #(38).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	^ self reportLastMatch