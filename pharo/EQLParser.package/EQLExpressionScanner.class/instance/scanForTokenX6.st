generated
scanForTokenX6
	self recordMatch: #(7).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	^ self reportLastMatch