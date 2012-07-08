*sixx-inout-common-private
sixxInstVarsOn: aStream indent: level context: dictionary 
	| instVars ind |
	aStream cr.
	instVars := self class allInstVarNames.
	ind := 0.
	instVars
		do: [:nm | 
			ind := ind + 1.
			self
				sixxInstVarNamed: nm
				value: (self instVarAt: ind)
				on: aStream
				indent: level
				context: dictionary]