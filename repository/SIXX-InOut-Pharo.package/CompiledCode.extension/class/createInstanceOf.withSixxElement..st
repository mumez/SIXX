*SIXX-InOut-Pharo
createInstanceOf: aClass withSixxElement: sixxElement 
	SixxInvalidDeserialization signal: aClass name element: sixxElement. 
	^nil