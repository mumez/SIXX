private
basicElementAt: key in: environmentQualifier

	| envKey elements element |
	self elementsDict isEmpty ifTrue: [^nil].
	envKey := self envKeyFor: environmentQualifier.
	elements := self elementsIn: envKey.
	element := elements at: key ifAbsent:[].
	^element