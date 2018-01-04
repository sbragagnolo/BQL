generated
scanForTokenX6
	[ self recordMatch: #(80).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch