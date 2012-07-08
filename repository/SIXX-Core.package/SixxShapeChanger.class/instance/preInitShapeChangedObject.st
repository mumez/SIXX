private
preInitShapeChangedObject

	"pre-initialize default values by attributesMap"

	self attributesMap
		keysAndValuesDo: [:key :value | self shapeChangedObject perform: (key , ':') asSymbol with: value].
	