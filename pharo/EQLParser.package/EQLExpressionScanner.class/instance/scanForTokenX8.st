generated
scanForTokenX8
	self recordMatch: #(24).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(26) ].
	^ self reportLastMatch