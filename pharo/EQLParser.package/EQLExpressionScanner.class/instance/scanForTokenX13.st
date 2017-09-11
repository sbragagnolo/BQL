generated
scanForTokenX13
	self step.
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	^ self reportLastMatch