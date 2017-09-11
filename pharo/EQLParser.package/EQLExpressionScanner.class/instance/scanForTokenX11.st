generated
scanForTokenX11
	self recordMatch: #(9).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	^ self reportLastMatch