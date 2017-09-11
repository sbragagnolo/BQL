generated
scanForTokenX10
	self recordMatch: #(2).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	^ self reportLastMatch