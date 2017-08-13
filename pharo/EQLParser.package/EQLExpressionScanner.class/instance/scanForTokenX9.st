generated
scanForTokenX9
	self recordMatch: #(10).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self reportLastMatch