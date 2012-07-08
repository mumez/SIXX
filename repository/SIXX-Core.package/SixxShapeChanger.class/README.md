I can be used for reading shape-changed instances.

Basically, you should subclass me and override three methods.

(YourShapeChanger >> shapeChangedObjectClass)
 Return a newly introduced class for old instances.

(YourShapeChanger >> sixxInstVarNamed: varName put: value)
 Override this method for setting converted values to the shape changed object.
 Example:
	"#oldNamedVar1 inst var was renamed to #renamedAtt1"
	varName == #oldNamedVar1 ifTrue: [^self attributesMap at: #renamedAtt1 put: value].

	"#oldNamedVar2 inst var was removed."
	varName == #oldNamedVar2 ifTrue: [^self].

	super sixxInstVarNamed: varName put: value 

(YourShapeChanger >> initializeShapeChangedObject )
 Override this method for setting newly introduced values to the shape changed object.

---
[:masashi | ^umezawa]