generated
scanForTokenX9
	self recordMatch: #(2).
	self step.
	currentCharacter == $-
		ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	^ self reportLastMatch