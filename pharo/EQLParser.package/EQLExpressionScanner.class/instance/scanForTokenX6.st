generated
scanForTokenX6
	[ self recordMatch: #(76).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch