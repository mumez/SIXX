# Features

SIXX is a multi-platform XML serializer/deserializer for Smalltalk. You can exchange various Smalltalk objects among different (dialect) images.

## How to use

### Basic writing/reading

SIXX is very easy to use. Like #storeString, You can generate a SIXX string by #sixxString.

```smalltalk
array := Array with: 1 with: 'Hello' with: Date today.
array sixxString.
```

This code generates the following SIXX string:

```xml
'<sixx.object sixx.id="0" sixx.type="Array">
  <sixx.object sixx.id="1" sixx.type="SmallInteger">1</sixx.object>
  <sixx.object sixx.id="2" sixx.type="String">Hello</sixx.object>
  <sixx.object sixx.id="3" sixx.type="Date">16 June 2002</sixx.object>
</sixx.object>'
```

This string can be read by #readSixxFrom:.

```smalltalk
Object readSixxFrom: sixxString. "sixxString is the above string"
```

### Stream writing/reading

SixxWriteStream and SixxReadStream are provided so that you can write/read Smalltalk objects in a way similar to binary object stream (BOSS in VW, and the ReferenceStream in Squeak).

In order to write objects to an external file, you can:

```smalltalk
sws := SixxWriteStream newFileNamed: 'obj.sixx'.
sws nextPut: object. "an object"
sws nextPutAll: objects. "collection of objects"
sws close.
```

And to read objects from an external file:

```smalltalk
srs := SixxReadStream readOnlyFileNamed: 'obj.sixx'.
objects := srs contents.
srs close.
```

### SIXX hooks

#### Customizing serialization

| Hook method                             | Description                                                                                                                                                                   |
| --------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Object>>sixxPrepareWrite                | It is called before the instance is written in SIXX.                                                                                                                          |
| Object>>sixxWriteValue                  | Return the object actually serialized.                                                                                                                                        |
| Object>>sixxIgnorableInstVarNames       | Specify the instance variables that are not written in SIXX.                                                                                                                  |
| Object>>sixxNonReferencableInstVarNames | Specify the instance variables that should not be referenced in SIXX. Values are always written redundantly. It is useful for small literal objects like String, Number, etc. |
| Object>>sixxReferenceIdInContext:       | Return unique id that can be referenced from other objects in SIXX. It is useful when objects have their own unique id.                                                       |

#### Customizing deserialization

| Hook method            | Description                                                      |
| ---------------------- | ---------------------------------------------------------------- |
| Object>>sixxInitialize | It is called immediately after the instance is read from SIXX    |
| Object>>sixxReadValue  | Return the object for the client from the deserialized instance. |

### ShapeChanger

SixxShapeChangeReadStream enables you to read class shape changed instances. It supports renamed, removed and newly added instance variables.

```smalltalk
srs := SixxShapeChangeReadStream on: oldSixx readStream.
srs shapeChangers at:#SmallIntegerOLD put: SmallInteger . "simple renaming"

srs shapeChangers at: #SixxShapeChangedObject put: SixxMockShapeChanger.
"You can implement ShapeChanger for more complex conversion. "
```

To define a new ShapeChanger, you should subclass base ShapeChanger class and override three methods.

| Hook method                                            | Description                                                                           |
| ------------------------------------------------------ | ------------------------------------------------------------------------------------- |
| YourShapeChanger>>shapeChangedObjectClass              | Return a newly introduced class for old instances.                                    |
| YourShapeChanger>>sixxInstVarNamed: varName put: value | Override this method for setting converted values to the shape changed object.        |
| YourShapeChanger>>initializeShapeChangedObject         | Override this method for setting newly introduced values to the shape changed object. |

For example: (YourShapeChanger>>sixxInstVarNamed: varName put:)

```smalltalk
sixxInstVarNamed: varName put: value
    "#oldNamedVar1 inst var was renamed to #renamedAtt1"
    varName == #oldNamedVar1 ifTrue: [^self attributesMap at: #renamedAtt1 put: value].

    "#oldNamedVar2 inst var was removed."
    varName == #oldNamedVar2 ifTrue: [^self].

    super sixxInstVarNamed: varName put: value
```

From SIXX 0.3, you can apply ShapeChanger(s) without using SixxShapeChangeReadStream.

```smalltalk
obj := SixxContext evaluate: [Object readSixxFrom: oldSixx] shapeChangersBy: [:shapeChangers | shapeChangers at: #SixxShapeChangedObject put: SixxSomeShapeChanger].
```

### Formatter

Formatter is a new SIXX function for customizing SIXX format without subclassing.

Normally, you can customize SIXX serialization format by overriding hooks such as #sixxWriteValue, #sixxIgnorableInstVarNames. However, sometimes you would like to customize serialization format more dynamically.
For example, you may want to change default Array serialization format to compact one, if the array includes only primitive (literal) elements.

Suppose there is an array like:

```smalltalk
array := #(1 2 3 4 5).
```

By default, the array will be serialized if you evaluate:

```smalltalk
array sixxString. "print it"
```

```xml
'<sixx.object sixx.id="0" sixx.type="Array">
  <sixx.object sixx.id="1" sixx.type="SmallInteger">1</sixx.object>
  <sixx.object sixx.id="2" sixx.type="SmallInteger">2</sixx.object>
  <sixx.object sixx.id="3" sixx.type="SmallInteger">3</sixx.object>
  <sixx.object sixx.id="4" sixx.type="SmallInteger">4</sixx.object>
  <sixx.object sixx.id="5" sixx.type="SmallInteger">5</sixx.object>
</sixx.object>'
```

This format is reasonable for supporting complex array, but the format could be space-consuming if the array contains only primitive (literal) elements. By setting a Formatter, you can use more compact format for Array.

```smalltalk
SixxContext formatters: {SixxMockLiteralArrayFormatter on: Array}.
```

After that, the format will be:

```xml
'<sixx.object
  sixx.id="0"
  sixx.type="Array"
  sixx.formatter="SixxMockLiteralArrayFormatter"
>
  <sixx.object sixx.id="1" sixx.type="String">#(1 2 3 4 5)</sixx.object>
</sixx.object>'
```

You can reset the formatter by:

```smalltalk
SixxContext resetFormatters.
```

For convenience, there is a method to switch formatter temporarily.

```smalltalk
SixxContext applyFormatters: {SixxMockLiteralArrayFormatter on: Array} while: [
array sixxString.
]
```

Or, you can even use:

```smalltalk
SixxContext evaluate: [array sixxString] formattersBy: [:formatters | formatters add: (SixxMockLiteralArrayFormatter on: Array)].
```

In short, Formatter can be used:

- For customizing SIXX format dynamically.
- For overriding SIXX format of the existing classes temporarily.
