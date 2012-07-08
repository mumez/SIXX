*sixx-inout-common-private
typeFromSixxElement: sixxElement 
	^SixxXmlUtil attributeSymbolAt: SixxConstants current typeTagName from: sixxElement.
	