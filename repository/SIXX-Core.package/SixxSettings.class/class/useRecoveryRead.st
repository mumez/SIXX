accessing
useRecoveryRead
	useRecoveryRead isNil ifTrue: [useRecoveryRead := false].
	^useRecoveryRead