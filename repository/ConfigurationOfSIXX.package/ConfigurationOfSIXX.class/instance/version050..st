versions
version050: spec
	<version: '0.5.0' imports: #('0.5-baseline')>

	spec for: #common do:[
		spec 
			package: 'SIXX-Core' with: 'SIXX-Core-MasashiUmezawa.19';
			package: 'SIXX-ParserAdapter' with: 'SIXX-ParserAdapter-MasashiUmezawa.13';
			package: 'SIXX-InOut-Common' with: 'SIXX-InOut-Common-mu.14';
			package: 'SIXX-Examples' with: 'SIXX-Examples-mu.3';
			package: 'SIXX-Test' with: 'SIXX-Test-MasashiUmezawa.16'.
	].
	spec for: #squeakCommon do:[
		spec 
			package: 'SIXX-Squeak' with: 'SIXX-Squeak-MasashiUmezawa.3'
	].
	spec for: #squeak do:[
		spec blessing: #beta.
		spec 
			package: 'SIXX-InOut-Squeak' with: 'SIXX-InOut-Squeak-MU.12'.
	].
	spec for: #pharo do:[
		spec blessing: #beta.
		spec
			project: 'XMLParser' with: '3.4.8'.
		spec 
			package: 'SIXX-InOut-Pharo' with: 'SIXX-InOut-Pharo-MasashiUmezawa.5'.
	].
