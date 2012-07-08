private
envKeyFor: environmentQualifier
	^environmentQualifier isNil ifTrue: [self defaultEnvironmentQualifier] ifFalse: [environmentQualifier].