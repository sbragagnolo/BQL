generated
scanForTokenX4
	self recordMatch: #(4).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(14).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(26) ] ].
	^ self reportLastMatch