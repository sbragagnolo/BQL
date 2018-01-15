generated
scanForTokenX5
	self recordMatch: #(36).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(37) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(35) ].
	^ self reportLastMatch