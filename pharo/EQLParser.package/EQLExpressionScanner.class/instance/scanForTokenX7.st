generated
scanForTokenX7
	self recordMatch: #(24).
	self step.
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	^ self reportLastMatch