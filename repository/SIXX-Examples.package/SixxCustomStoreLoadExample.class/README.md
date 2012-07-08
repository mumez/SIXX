I am an example of SIXX custom serialization.
SIXX normally writes/reads all attribute values (instance variables).
But sometimes this behavior is not appropriate. For example, I would like to omit writing/reading a "cachedData" value, because it is only a cache.

By overriding hook methods below, you can customize what attributes are written or read.

(instance methods)
#sixxIgnorableInstVarNames (for reading/writing)

#sixxContentOn: aStream indent: level context: dictionary (for writing)
#sixxInstVarNamed: instVarName put: aValue (for reading)

(class methods)
#sixxContentOn: aStream indent: level context: dictionary (for writing)
#sixxInstVarNamed: instVarName put: aValue (for reading)

#createInstanceOf: aClass withSixxElement: sixxElement (for writing)
(It is useful for variable objects. See implementors.)

---
MU 6/14/2002 11:12



