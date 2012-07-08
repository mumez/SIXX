*sixx-inout-common-private
refInstanceFromSixxElement: sixxElement context: aDictionary 
	| idref |
	idref := self idrefFromSixxElement: sixxElement.
	^aDictionary at: idref