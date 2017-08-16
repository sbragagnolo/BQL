generated
scanForTokenX8
	self recordMatch: #(15).
	self step.
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(35) ].
	^ self reportLastMatch