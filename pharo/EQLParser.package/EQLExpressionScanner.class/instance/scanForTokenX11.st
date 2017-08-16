generated
scanForTokenX11
	[ self recordMatch: #(79).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch