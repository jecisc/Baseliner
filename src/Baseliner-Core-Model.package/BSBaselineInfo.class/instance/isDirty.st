testing
isDirty
	^ super isDirty or: [ self workingCopy isNotNil and: [ self workingCopy needsSaving ] ]