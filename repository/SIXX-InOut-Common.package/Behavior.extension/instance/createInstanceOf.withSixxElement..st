*sixx-inout-common-instance creation
createInstanceOf: aClass withSixxElement: sixxElement 
	"override if you like"
	^ aClass isVariable
		ifTrue: [self createMixedFieldsInstanceOf: aClass withSixxElement: sixxElement]
		ifFalse: [self sixxNew: aClass withSixxElement: sixxElement]