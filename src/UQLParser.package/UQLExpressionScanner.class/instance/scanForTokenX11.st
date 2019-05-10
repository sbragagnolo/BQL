generated
scanForTokenX11
	self recordMatch: #(35).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	^ self reportLastMatch