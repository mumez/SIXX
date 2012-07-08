*sixx-inout-common-printing
sixxContentOn: aStream indent: level context: dictionary 
	| instVars startIndex |
	aStream cr.
	instVars := self class allInstVarNames.
	startIndex := Object class allInstVarNames size + 1.
	startIndex
		to: instVars size
		do: [:idx | self
				sixxInstVarNamed: (instVars at: idx)
				value: (self instVarAt: idx)
				on: aStream
				indent: level + 1
				context: dictionary]