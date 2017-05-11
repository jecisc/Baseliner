utils
extractBranch
	self isWorkingCopyUsable
		ifFalse: [ ^ '' ].
	^ self getReferenceFromWorkingCopy branch