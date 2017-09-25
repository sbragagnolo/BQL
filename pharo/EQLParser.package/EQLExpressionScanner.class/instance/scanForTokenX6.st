generated
scanForTokenX6
	[ self recordMatch: #(74).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch