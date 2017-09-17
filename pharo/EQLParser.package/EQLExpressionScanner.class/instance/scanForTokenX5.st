generated
scanForTokenX5
	self recordMatch: #(29).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(26) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	^ self reportLastMatch