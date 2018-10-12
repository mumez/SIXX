*sixx-inout-pharo-instance creation
createInstanceOf: aClass withSixxElement: sixxElement 
	SixxInvalidDeserialization signal: aClass name element: sixxElement. 
	^nil