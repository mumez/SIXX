writing/reading sixx
sixxInstVarNamed: instVarName put: aValue 
	"override if you like"
	instVarName == #morph ifTrue: [self morph: (self morphFrom: aValue)]