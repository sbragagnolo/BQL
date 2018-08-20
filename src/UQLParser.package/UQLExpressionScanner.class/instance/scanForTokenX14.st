generated
scanForTokenX14
	self step.
	currentCharacter == $&
		ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	^ self reportLastMatch