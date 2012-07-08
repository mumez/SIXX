override hooks
sixxInstVarNamed: varName put: value
	varName == #fullName ifTrue: [^self attributesMap at: #name put: value].
	super sixxInstVarNamed: varName put: value