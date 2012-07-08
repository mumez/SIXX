*sixx-inout-common-private
formatterFromSixxElement: sixxElement for: aClass context: dictionary 
	| formatterName env resolver formatter |
	formatterName := self formatterNameFromSixxElement: sixxElement.
 	formatterName isNil ifTrue: [^nil].
	env := self envFromSixxElement: sixxElement.
	resolver := dictionary formatterResolver.
	formatter :=  resolver formatterAt: aClass in: env.
	
	^ formatter isNil
		ifTrue: [SixxFormatterNotFound
				signal: formatterName
				element: sixxElement
				context: dictionary]
		ifFalse: [formatter]