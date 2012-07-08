I represent a WriteStream for SIXX format.

I can be used as follows:

srs := SixxWriteStream newFileNamed: ('obj.sixx').
srs nextPut: <object>.
srs close.

srs := SixxWriteStream newFileNamed: ('objs.sixx').
srs nextPutAll: <collection of object>.
srs close.

---
[:masashi | ^umezawa]