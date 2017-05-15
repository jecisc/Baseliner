accessing
computedPackages
	self versionForInfoList ifNil: [ ^ #() ].
	^ self versionForInfoList packages collect: [ :pkgSpec | BSPackageInfo spec: pkgSpec baselineInfo: self baselineInfo ]