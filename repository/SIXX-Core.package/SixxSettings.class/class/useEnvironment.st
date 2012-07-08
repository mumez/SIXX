accessing
useEnvironment
	useEnvironment isNil ifTrue: [useEnvironment := false].
	^useEnvironment