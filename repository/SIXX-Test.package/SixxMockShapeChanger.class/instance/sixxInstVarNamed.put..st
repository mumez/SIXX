override hooks
sixxInstVarNamed: varName put: value
	varName == #oldNamedVar1 ifTrue: [^self attributesMap at: #renamedAtt1 put: value].
	varName == #oldVar2 ifTrue: [^self].

	super sixxInstVarNamed: varName put: value