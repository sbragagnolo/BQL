generated
scanForTokenX9
	self recordMatch: #(15).
	self step.
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	^ self reportLastMatch