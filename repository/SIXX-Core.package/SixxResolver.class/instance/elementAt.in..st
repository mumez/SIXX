resolving
elementAt: key in: environmentQualifier

	| element |
	element := self basicElementAt: key in: environmentQualifier.
	element isNil ifTrue: [element := self basicElementAt: key in: self defaultEnvironmentQualifier].
	^element