generated
scanForTokenX9
	self recordMatch: #(7).
	self step.
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	^ self reportLastMatch