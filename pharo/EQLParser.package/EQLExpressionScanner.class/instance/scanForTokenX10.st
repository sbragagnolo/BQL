generated
scanForTokenX10
	self recordMatch: #(8).
	self step.
	currentCharacter == $&
		ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	^ self reportLastMatch