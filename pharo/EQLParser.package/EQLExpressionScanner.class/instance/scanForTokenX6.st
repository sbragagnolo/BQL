generated
scanForTokenX6
	[ self recordMatch: #(68).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch