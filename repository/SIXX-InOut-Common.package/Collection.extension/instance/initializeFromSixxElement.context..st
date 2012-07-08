*sixx-inout-common-initializing
initializeFromSixxElement: sixxElement context: aDictionary 
	"override to use #initializeMixedFieldsFromSixxElement:context: if having some inst vars"
	SixxXmlUtil
		elementsFrom: sixxElement
		do: [:elem | 
			| childInst | 
			childInst := self class fromSixxElement: elem context: aDictionary.
			self add: childInst]