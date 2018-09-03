generated
scanForTokenX13
	self step.
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	^ self reportLastMatch