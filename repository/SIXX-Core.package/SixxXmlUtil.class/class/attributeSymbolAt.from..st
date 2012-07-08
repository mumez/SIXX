actions
attributeSymbolAt: attribName from: sixxElement
	| value |
	(self isTextFrom: sixxElement) ifTrue: [^nil].
	value := self attributeAt: attribName from: sixxElement .
	^ value isNil
		ifFalse: [value asSymbol]