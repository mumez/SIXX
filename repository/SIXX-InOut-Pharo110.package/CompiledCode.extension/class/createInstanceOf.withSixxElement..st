*SIXX-InOut-Pharo110
createInstanceOf: aClass withSixxElement: sixxElement 
	SixxInvalidDeserialization signal: aClass name element: sixxElement. 
	^nil