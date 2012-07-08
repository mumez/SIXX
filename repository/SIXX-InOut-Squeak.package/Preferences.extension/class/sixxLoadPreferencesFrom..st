*sixx-inout-squeak-personalization
sixxLoadPreferencesFrom: aFileName
	| stream params dict desktopColor |
	stream := SixxReadStream readOnlyFileNamed: aFileName.
	params := stream next.
	self assert: (params isKindOf: IdentityDictionary).
	params removeKey: #PersonalDictionaryOfPreferences.
	dict := stream next.
	self assert: (dict isKindOf: IdentityDictionary).
	desktopColor := stream next.
	stream close.
	dict keysAndValuesDo:
		[:key :value | (self preferenceAt: key ifAbsent: [nil]) ifNotNilDo:
			[:pref | pref preferenceValue: value preferenceValue]].

	params keysAndValuesDo: [ :key :value | self setParameter: key to: value ].

	Smalltalk isMorphic
		ifTrue: [ World fillStyle: desktopColor ]
		ifFalse: [ self desktopColor: desktopColor. ScheduledControllers updateGray ].
