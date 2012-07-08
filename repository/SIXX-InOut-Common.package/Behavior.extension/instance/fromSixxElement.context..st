*sixx-inout-common-private
fromSixxElement: sixxElement context: aDictionary 
	^ (self includesRefInstanceFromSixxElement: sixxElement context: aDictionary)
		ifTrue: [self refInstanceFromSixxElement: sixxElement context: aDictionary]
		ifFalse: [self newInstanceFromSixxElement: sixxElement context: aDictionary]