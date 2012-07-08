*sixx-inout-common-instance creation
sixxNew: aClass withSixxElement: sixxElement 
	^[aClass new]
		on: Error
		do: [:ex | 
			| alterClass | 
			alterClass := SixxNewFailed signal: aClass name element: sixxElement.
			alterClass isNil
				ifTrue: [aClass basicNew]
				ifFalse: [alterClass basicNew]]