writing
startTag
	self isStartTagPut
		ifFalse: [self stream nextPutAll: SixxConstants current sixxStartTag.
			self isStartTagPut: true.
			self cr]