*sixx-inout-common-private
sixxChildrenContentsOn: aStream indent: level context: dictionary 
	self class isBits
		ifTrue: [aStream nextPutAll: '#( '.
			1 to: self size do: [:idx | 
				aStream nextPutAll: (self at: idx) printString; space
			].
			aStream nextPutAll: ')'.
			^ self].
		
	self class isVariable
		ifTrue: [^ self
				sixxMixedFieldsOn: aStream
				indent: level
				context: dictionary].
			
	self
		sixxInstVarsOn: aStream
		indent: level
		context: dictionary