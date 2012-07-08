*sixx-inout-common-private
includesRefInstanceFromSixxElement: sixxElement context: aDictionary 
	| idref |
	idref := self idrefFromSixxElement: sixxElement.
	^ idref isNil
		ifTrue: [false]
		ifFalse: [aDictionary includesKey: idref]