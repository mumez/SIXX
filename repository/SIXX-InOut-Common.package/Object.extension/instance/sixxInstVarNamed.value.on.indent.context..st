*sixx-inout-common-private
sixxInstVarNamed: varName value: varValue on: aStream indent: level context: dictionary 
	"override if you wish"
	(dictionary settings suppressNilWrite and: [varValue isNil]) ifTrue: [^self].
	((self sixxIgnorableInstVarNames collect: [:each | each asString]) includes: varName) ifTrue: [^ self].
	(((self sixxNonReferencableInstVarNames collect: [:each | each asString]) includes: varName)
			and: [varValue notNil])
		ifTrue: [^ varValue
				sixxNoRefOn: aStream
				name: varName
				indent: level
				context: dictionary].
	varValue
		sixxOn: aStream
		name: varName
		indent: level
		context: dictionary