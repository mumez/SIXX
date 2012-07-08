*sixx-inout-common-instance creation
readSixxFromSixxElement: sixxElement context: aDictionary 
	| rootClass typeAttr |
	typeAttr := self typeFromSixxElement: sixxElement.
	^typeAttr isNil
		ifTrue: [(self includesRefInstanceFromSixxElement: sixxElement context: aDictionary)
				ifTrue: [self refInstanceFromSixxElement: sixxElement context: aDictionary]
				ifFalse:[SixxNoTypeDefinition signalElement: sixxElement context: aDictionary]]
		ifFalse: [rootClass := self classFromSixxElement: sixxElement context: aDictionary.
			rootClass isNil
				ifFalse: [rootClass fromSixxElement: sixxElement context: aDictionary]]