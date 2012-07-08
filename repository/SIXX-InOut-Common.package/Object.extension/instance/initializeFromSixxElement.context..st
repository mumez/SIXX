*sixx-inout-common-initializing
initializeFromSixxElement: sixxElement context: aDictionary 
	self class isBits
		ifTrue: [^ self initializeIndexFieldsFromSixxElement: sixxElement context: aDictionary].
	self class isVariable
		ifTrue: [^ self initializeMixedFieldsFromSixxElement: sixxElement context: aDictionary].
	self initializeInstVarsFromSixxElement: sixxElement context: aDictionary