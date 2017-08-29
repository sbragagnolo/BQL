generated
scanForTokenX10
	self recordMatch: #(3).
	self step.
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	^ self reportLastMatch