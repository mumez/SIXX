*SIXX-InOut-Pharo110-instance creation
readSixxContentStringFrom: aStream
	| space familyName size emphasisCode |
	space := Character space.
	familyName := aStream upTo: space.
	size := (aStream upTo: space) asInteger.
	emphasisCode := (aStream upTo: space) asInteger.
	^self sixxFamilyName: familyName size: size emphasized: emphasisCode.
