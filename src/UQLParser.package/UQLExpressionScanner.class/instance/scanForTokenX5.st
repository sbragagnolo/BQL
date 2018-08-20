generated
scanForTokenX5
	self recordMatch: #(36).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(35) ].
	^ self reportLastMatch