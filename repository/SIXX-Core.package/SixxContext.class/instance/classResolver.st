accessing
classResolver
	classResolver isNil ifTrue: [classResolver := SixxClassResolver default].
	^classResolver