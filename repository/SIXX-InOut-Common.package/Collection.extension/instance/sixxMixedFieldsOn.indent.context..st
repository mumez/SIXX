*sixx-inout-common-private
sixxMixedFieldsOn: aStream indent: level context: dictionary
	"override"
	"Usually Collection's inst vars are not needed for serialization"
	self sixxIndexFieldsOn: aStream indent: level context: dictionary.