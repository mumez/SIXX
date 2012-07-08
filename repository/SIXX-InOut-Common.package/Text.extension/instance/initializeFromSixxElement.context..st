*sixx-inout-common-initializing
initializeFromSixxElement: sixxElement context: aDictionary 
	SixxXmlUtil
		elementsFrom: sixxElement
		do: [:elem | | varName | (SixxXmlUtil isTextFrom: elem)
				ifFalse: [varName := self class nameFromSixxElement: elem.
					varName notNil
						ifTrue: [| childInst | 
							childInst := self class fromSixxElement: elem context: aDictionary.
							self sixxInstVarNamed: varName put: childInst ]]]