I represent a ReadStream for SIXX format.

I can be used as follows:

srs := SixxReadStream readOnlyFileNamed: ('obj.sixx').
obj := srs next.
srs close.
obj inspect.

srs := SixxReadStream readOnlyFileNamed: ('objs.sixx').
objs := srs contents.
srs close.
objs inspect.

---
[:masashi | ^umezawa]