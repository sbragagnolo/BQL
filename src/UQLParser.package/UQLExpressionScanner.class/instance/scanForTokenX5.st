generated
scanForTokenX5
	self recordMatch: #(37).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	^ self reportLastMatch