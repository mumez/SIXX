tests
testBagReadWrite
	"SixxFormatterTestCase debug: #testBagReadWrite"
	| bag parsedNode sixx1 sixx2 sixx3 |
	bag := #('apple' 'apple' 'orange' 'grape' 'grape' 'grape') asBag.

	SixxContext applyFormatters: self formatters while: [ 
		sixx1 := bag sixxString.
		self should: [self collectionEquals: bag with: (Object readSixxFrom: sixx1)].
		self should: [(SixxContext protoFormatterResolver formatterAt: Bag) isMemberOf: SixxMockBagFormatter]
	].

	parsedNode := SixxXmlUtil parseXml: sixx1.
	self should: [(SixxXmlUtil attributeAt: SixxConstants current formatterTagName from: parsedNode) = 'SixxMockBagFormatter'].

	SixxContext applyFormatters: #() while: [
		sixx2 := bag sixxString.
		self should: [self collectionEquals: bag with: (Object readSixxFrom: sixx2)].
		self should: [(SixxContext protoFormatterResolver formatterAt: Bag) isNil]
	].

	parsedNode := SixxXmlUtil parseXml: sixx2.
	self should: [(SixxXmlUtil attributeAt: SixxConstants current formatterTagName from: parsedNode) isNil].

	self shouldnt: [sixx1 = sixx2].
	
	sixx3 := bag sixxString.
	self should: [self collectionEquals: bag with: (Object readSixxFrom: sixx3)].
	self should: [(SixxContext protoFormatterResolver formatterAt: Bag) isNil].

	self should: [sixx2 = sixx3].