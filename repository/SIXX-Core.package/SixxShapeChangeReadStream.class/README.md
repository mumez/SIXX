I can read class shape changed instances. I support renamed, removed and newly added instance variables.

srs := SixxShapeChangeReadStream on: oldSixx readStream.
srs shapeChangers at:#SmallIntegerOLD put: SmallInteger . "simple renaming"

srs shapeChangers at: #SixxShapeChangedObject put: SixxMockShapeChanger.
"You can implement ShapeChanger for more complex conversion."

---
[:masashi | ^umezawa]