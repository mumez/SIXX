accessing
settings
	settings isNil
		ifTrue: [settings := self environment
						at: #SixxSettings
						ifAbsent: [self error: 'SixxSettings is needed to run SIXX']].
	^ settings