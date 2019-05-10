generated
scanForTokenX14
	self step.
	currentCharacter == $&
		ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	^ self reportLastMatch