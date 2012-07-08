writing
endTag
	(self isStartTagPut and: [ self isEndTagPut not] )
		ifTrue: [self stream nextPutAll: SixxConstants current sixxEndTag.
			self isEndTagPut: true]