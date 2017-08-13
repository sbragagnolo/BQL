generated
scanForTokenX4
	self recordMatch: #(1).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(15).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(25) ] ].
	^ self reportLastMatch