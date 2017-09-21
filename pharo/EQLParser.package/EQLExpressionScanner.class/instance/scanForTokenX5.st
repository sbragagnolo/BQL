generated
scanForTokenX5
	self recordMatch: #(29).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self reportLastMatch