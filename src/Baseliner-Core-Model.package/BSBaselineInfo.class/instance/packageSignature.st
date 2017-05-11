utils
packageSignature
	| ref |
	self isWorkingCopyUsable
		ifFalse: [ ^ '' ].
	ref := self getReferenceFromWorkingCopy.
	^ ref author , '.' , ref versionNumber asString