generated
scanForTokenX6
	[ self recordMatch: #(63).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch