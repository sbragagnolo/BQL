generated
scanForTokenX11
	self recordMatch: #(4).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	^ self reportLastMatch