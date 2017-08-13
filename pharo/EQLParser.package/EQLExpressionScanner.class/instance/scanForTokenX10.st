generated
scanForTokenX10
	self recordMatch: #(17).
	self step.
	currentCharacter == $&
		ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	^ self reportLastMatch