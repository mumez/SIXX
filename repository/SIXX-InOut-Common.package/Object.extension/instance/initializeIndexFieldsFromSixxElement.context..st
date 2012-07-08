*sixx-inout-common-initializing
initializeIndexFieldsFromSixxElement: sixxElement context: aDictionary 
	| idx nonameElems |
	idx := 1.
	nonameElems := (SixxXmlUtil elementsFrom: sixxElement)
				select: [:each | (self class nameFromSixxElement: each) isNil].
	nonameElems isEmpty
		ifFalse: [nonameElems
				do: [:elem | | childInst | (SixxXmlUtil isTextFrom: elem)
						ifFalse: [childInst := self class fromSixxElement: elem context: aDictionary.
							self sixxAt: idx put: childInst.
							idx := idx + 1]]]