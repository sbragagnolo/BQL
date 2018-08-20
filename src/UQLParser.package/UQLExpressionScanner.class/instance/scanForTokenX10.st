generated
scanForTokenX10
	self recordMatch: #(14).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	^ self reportLastMatch