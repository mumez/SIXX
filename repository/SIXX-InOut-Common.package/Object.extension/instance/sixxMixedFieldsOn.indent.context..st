*sixx-inout-common-private
sixxMixedFieldsOn: aStream indent: level context: dictionary
	self sixxInstVarsOn: aStream indent: level context: dictionary.
	self sixxIndexFieldsOn: aStream indent: level context: dictionary.