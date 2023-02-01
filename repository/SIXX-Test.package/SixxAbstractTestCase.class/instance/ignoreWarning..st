private
ignoreWarning: aBlock
	SixxPortableUtil testRunnerSupportWarningTest ifTrue: [
		^ aBlock value.
	].
	"This hack is especially for Squeak 6+ which records testing error when a warning occurs"
	^ aBlock on: Warning do: [:ex | ex resume ].