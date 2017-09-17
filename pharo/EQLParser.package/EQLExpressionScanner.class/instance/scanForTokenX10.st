generated
scanForTokenX10
	self recordMatch: #(5).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	^ self reportLastMatch