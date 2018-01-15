generated
scanForTokenX6
	[ self recordMatch: #(82).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch