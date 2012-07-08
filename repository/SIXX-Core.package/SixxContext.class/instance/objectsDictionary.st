accessing
objectsDictionary
	objectsDictionary isNil ifTrue: [objectsDictionary := IdentityDictionary new].
	^objectsDictionary