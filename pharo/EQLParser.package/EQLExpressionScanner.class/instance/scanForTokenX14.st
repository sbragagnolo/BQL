generated
scanForTokenX14
	self step.
	currentCharacter == $&
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch