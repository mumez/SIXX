I am an example of SIXX custom serialization.
I show the #sixxReadValue hook usage pattern.

1. Implement #sixxWriteValue your morph to return me. 

sixxWriteValue
 ^SixxAutoMorphMemento on: self 

2. just use #sixxString and #readSixxFrom: as usual. The stored object will be a memento, and it will be automatically restored as a real object (morph) in loading.

---
MU 11/10/2006 14:35