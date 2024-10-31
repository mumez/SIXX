*SIXX-InOut-Pharo110-printing
sixxContentOn: aStream indent: level context: dictionary
	self sixxChildrenContentsOn: aStream indent: level + 1 context: dictionary.
	aStream tab: level.