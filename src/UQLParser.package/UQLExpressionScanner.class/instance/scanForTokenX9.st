generated
scanForTokenX9
	self recordMatch: #(30).
	self step.
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	^ self reportLastMatch