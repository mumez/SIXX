*sixx-inout-common-private
idrefFromSixxElement: sixxElement
	^SixxXmlUtil attributeAt: SixxConstants current idrefTagName from: sixxElement.
	