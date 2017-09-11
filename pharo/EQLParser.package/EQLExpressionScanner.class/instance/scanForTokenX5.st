generated
scanForTokenX5
	self recordMatch: #(22).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	^ self reportLastMatch