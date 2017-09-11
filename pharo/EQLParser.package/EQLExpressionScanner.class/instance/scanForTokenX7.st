generated
scanForTokenX7
	self recordMatch: #(13).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	^ self reportLastMatch