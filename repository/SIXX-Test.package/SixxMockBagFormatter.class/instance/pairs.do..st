private
pairs: aCollection do: aBlock
	"For portability"
	1 to: aCollection size // 2 do:
		[:index | aBlock value: (aCollection at: 2 * index - 1) value: (aCollection at: 2 * index)]