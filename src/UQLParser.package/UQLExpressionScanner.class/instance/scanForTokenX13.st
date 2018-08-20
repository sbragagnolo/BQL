generated
scanForTokenX13
	self step.
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	^ self reportLastMatch