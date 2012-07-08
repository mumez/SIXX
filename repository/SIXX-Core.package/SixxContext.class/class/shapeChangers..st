actions-shapeChanger
shapeChangers: shapeChangerDictionary
	"Association: #NameInXML -> ShapeChanger"

	| resolver |
	resolver := SixxClassResolver new.
	shapeChangerDictionary associationsDo: [:each |
		resolver shapeChangers at: each key put: each value
	].

	self protoClassResolver: resolver