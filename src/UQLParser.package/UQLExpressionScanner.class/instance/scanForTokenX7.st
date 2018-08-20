generated
scanForTokenX7
	[ self recordMatch: #(81).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch