*sixx-inout-common-instance creation
createMixedFieldsInstanceOf: aClass withSixxElement: sixxElement 
	"override if you like"
	| nonameElems size |
	nonameElems := (SixxXmlUtil elementsFrom: sixxElement)
				select: [:each | (self nameFromSixxElement: each) isNil].
	size := nonameElems isEmpty
				ifTrue: [0]
				ifFalse: [nonameElems size].
	^ self
		sixxNew: aClass
		size: size
		withSixxElement: sixxElement