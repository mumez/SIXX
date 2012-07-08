initializing
initialize
	contextDictionary := SixxContext forRead.
	position := 0.
	sixxElements := self parseStream: stream.
	limit := sixxElements isNil
				ifTrue: [0]
				ifFalse: [sixxElements size].
	cachedObjects := Dictionary new