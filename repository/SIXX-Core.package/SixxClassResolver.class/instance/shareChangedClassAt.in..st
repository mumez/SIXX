resolving
shareChangedClassAt: classOrMetaclassName in: environmentQualifier

	| elem |
	elem := self elementAt: classOrMetaclassName in: environmentQualifier.
	
	^elem