accessing
formatterResolver
	formatterResolver isNil ifTrue: [formatterResolver := SixxFormatterResolver default].
	^formatterResolver