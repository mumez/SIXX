initialize-release
setUpResolvers
	"set up context - ShapeChanger, Formatter, etc"

	self classResolver: self class protoClassResolver.
	self formatterResolver: self class protoFormatterResolver. 