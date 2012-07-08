instance creation
signal: aString
	| inst |
	inst := self new.
	inst messageText: aString.
	^SixxPortableUtil signalException: inst