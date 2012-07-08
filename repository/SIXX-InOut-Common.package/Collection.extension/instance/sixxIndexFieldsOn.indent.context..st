*sixx-inout-common-private
sixxIndexFieldsOn: aStream indent: level context: dictionary
	self size = 0 ifTrue: [^self].
	aStream cr.
	self sixxDo: 
			[:each | 
			each 
				sixxOn: aStream
				indent: level
				context: dictionary]

