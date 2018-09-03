generated
scanForTokenX8
	self recordMatch: #(32).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	^ self reportLastMatch