generated
scanForTokenX7
	self recordMatch: #(27).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self reportLastMatch