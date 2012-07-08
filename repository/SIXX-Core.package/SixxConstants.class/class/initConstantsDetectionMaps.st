class initialization
initConstantsDetectionMaps
	"SixxConstants initConstantsDetectionMaps"
	ConstantsDetectionMap := nil.
	self registerToDetectionMaps.
	self allSubclasses do: [:each | each registerToDetectionMaps]. 
	