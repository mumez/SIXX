accessing
name
	name isNil ifTrue: [name := self class name].
	^name