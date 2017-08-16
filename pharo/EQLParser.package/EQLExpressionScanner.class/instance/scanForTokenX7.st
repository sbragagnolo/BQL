generated
scanForTokenX7
	self recordMatch: #(12).
	self step.
	currentCharacter == $-
		ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self reportLastMatch