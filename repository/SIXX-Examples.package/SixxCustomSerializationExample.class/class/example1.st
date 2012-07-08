examples
example1
	"self example1"
	| instA sixx instB |
	instA := self new varTime: Time now; varString: 'Testing'; varNumber: 123.
	sixx := instA sixxString.
	instB := Object readSixxFrom: sixx.
	
	sixx inspect.
	(Array with:instA with: instB) inspect.