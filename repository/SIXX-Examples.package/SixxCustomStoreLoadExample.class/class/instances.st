accessing
instances
	instances isNil ifTrue: [instances := OrderedCollection new].
	^instances