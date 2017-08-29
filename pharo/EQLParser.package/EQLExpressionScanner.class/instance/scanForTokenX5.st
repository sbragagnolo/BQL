generated
scanForTokenX5
	self recordMatch: #(28).
	self step.
	currentCharacter == $<
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	^ self reportLastMatch