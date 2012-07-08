override hooks
initialize: aBag fromSixxElement: sixxElement context: aDictionary
	"override"

	self pairs: (SixxXmlUtil elementsFrom: sixxElement)
		do: [:countElement :valueElement | 
			| value count | 
			count := self class fromSixxElement: countElement context: aDictionary.
			value := self class fromSixxElement: valueElement context: aDictionary.
			aBag add: value withOccurrences: count].

	^aBag