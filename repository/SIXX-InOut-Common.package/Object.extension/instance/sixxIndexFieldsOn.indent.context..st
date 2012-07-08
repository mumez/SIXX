*sixx-inout-common-private
sixxIndexFieldsOn: aStream indent: level context: dictionary 
	"override if you like"
	| size |
	size := self basicSize.
	size = 0
		ifTrue: [^ self].
	1
		to: size
		do: [:i | 
			| element | 
			element := self basicAt: i.
			element 
				sixxOn: aStream
				indent: level
				context: dictionary]