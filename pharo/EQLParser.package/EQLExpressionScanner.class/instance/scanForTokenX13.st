generated
scanForTokenX13
	self step.
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	^ self reportLastMatch