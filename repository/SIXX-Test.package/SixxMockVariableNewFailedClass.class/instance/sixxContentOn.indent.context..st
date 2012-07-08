private-sixx
sixxContentOn: aStream indent: level context: dictionary
	"override if you like"
	self sixxInstVarsOn: aStream indent: level context: dictionary.
	self sixxIndexFieldsOn: aStream indent: level context: dictionary.