generated
scanForTokenX11
	self recordMatch: #(1).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	^ self reportLastMatch