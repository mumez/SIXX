*sixx-inout-common-instance creation
sixxNew: aClass size: size withSixxElement: sixxElement 
	^ [aClass new: size]
		on: Error
		do: [:ex | 
			| alterClass | 
			alterClass := SixxNewFailed signal: aClass name element: sixxElement.
			alterClass isNil
				ifTrue: [[aClass basicNew: size] on: Error do: [self sixxNew: aClass withSixxElement: sixxElement ]]
				ifFalse: [alterClass basicNew: size]]