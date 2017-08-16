generated
scanForTokenX12
	self recordMatch: #(7).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	^ self reportLastMatch