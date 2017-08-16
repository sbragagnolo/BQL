generated
scanForTokenX5
	self recordMatch: #(6).
	self step.
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(17).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(25) ].
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	^ self reportLastMatch