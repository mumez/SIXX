resolving
classAt: classOrMetaclassName in: environmentQualifier

	| retClass |
	retClass := self shareChangedClassAt: classOrMetaclassName in: environmentQualifier.
	retClass isNil ifFalse: [^retClass].

	^super classAt: classOrMetaclassName in: environmentQualifier