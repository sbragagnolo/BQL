generated
scanForTokenX8
	self recordMatch: #(12).
	self step.
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(34) ].
	^ self reportLastMatch