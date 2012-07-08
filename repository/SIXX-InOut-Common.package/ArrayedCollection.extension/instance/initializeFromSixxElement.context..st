*sixx-inout-common-initializing
initializeFromSixxElement: sixxElement context: aDictionary 
	"override to use #initializeMixedFieldsFromSixxElement:context: if having some inst vars"
	| idx |
	idx := 1.
	SixxXmlUtil elementsFrom: sixxElement
		do: [:elem | | childInst | (SixxXmlUtil isTextFrom: elem)
				ifFalse: [childInst := self class fromSixxElement: elem context: aDictionary.
					self sixxAt: idx put: childInst.
					idx := idx + 1]]