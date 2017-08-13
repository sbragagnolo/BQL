generated
scanForTokenX11
	[ self recordMatch: #(77).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch