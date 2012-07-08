*sixx-inout-common-private
classFromSixxElement: sixxElement context: dictionary 
	|  type env resolver retClass |
	type := self typeFromSixxElement: sixxElement.
	type isNil ifFalse:[
		env := self envFromSixxElement: sixxElement.
		resolver := dictionary classResolver.
		retClass :=  resolver classAt: type in: env.
	].

	^ retClass isNil
		ifTrue: [SixxClassNotFound
				signal: type
				element: sixxElement
				context: dictionary]
		ifFalse: [retClass]