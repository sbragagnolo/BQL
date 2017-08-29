generated
scanForTokenX4
	self recordMatch: #(26).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	^ self reportLastMatch