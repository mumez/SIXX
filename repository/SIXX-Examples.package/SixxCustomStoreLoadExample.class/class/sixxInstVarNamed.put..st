sixx writing/reading
sixxInstVarNamed: instVarName put: aValue 
	"override if you like"
	instVarName == #instances ifTrue: [self instances: aValue]