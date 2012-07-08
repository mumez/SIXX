sixx-shapeChange
sixxInstVarNamed: varName put: value
	varName == #oldNamedVar1 ifTrue: [^self renamedAtt1: value].

	super sixxInstVarNamed: varName put: value