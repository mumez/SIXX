tests
testNamespacedArray
	"self debug: #testNamespacedArray"
	| arraySixx1 array1  arraySixx2 array2  |
	arraySixx1 :=  '<sixx.object sixx.id="0" sixx.type="Array" sixx.env="Core" >
	<sixx.object sixx.id="1" sixx.type="SmallInteger" sixx.env="Core" >10</sixx.object>
	<sixx.object sixx.id="2" sixx.type="SmallInteger" sixx.env="Core" >20</sixx.object>
</sixx.object>
'.
	array1 := Object readSixxFrom: arraySixx1.
	self should: [array1 = #(10 20)].
	
	arraySixx2 := array1 sixxString. 
	array2 := Object readSixxFrom: arraySixx2.
	self should: [array2 = #(10 20)]