accessing
attributesMap
	"Answer the value of attributesMap"
	attributesMap isNil ifTrue: [attributesMap := Dictionary new].
	^ attributesMap