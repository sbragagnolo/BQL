generated
scanForTokenX14
	self step.
	currentCharacter == $&
		ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	^ self reportLastMatch