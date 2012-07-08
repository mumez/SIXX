*sixx-inout-common-private
idFromSixxElement: sixxElement 
	| sixxKey |
	sixxKey := SixxXmlUtil attributeAt: SixxConstants current idTagName from: sixxElement.
	^sixxKey isNil ifTrue: [''] ifFalse: [sixxKey]