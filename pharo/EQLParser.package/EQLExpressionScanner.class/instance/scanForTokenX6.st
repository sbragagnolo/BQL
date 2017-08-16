generated
scanForTokenX6
	self recordMatch: #(2).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(34) ].
	^ self reportLastMatch