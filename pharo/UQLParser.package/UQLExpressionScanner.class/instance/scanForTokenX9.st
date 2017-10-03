generated
scanForTokenX9
	self recordMatch: #(16).
	self step.
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	^ self reportLastMatch