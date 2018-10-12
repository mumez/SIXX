*sixx-inout-squeak-instance creation
createInstanceOf: aClass withSixxElement: sixxElement 
	SixxInvalidDeserialization signal: aClass name element: sixxElement. 
	^nil