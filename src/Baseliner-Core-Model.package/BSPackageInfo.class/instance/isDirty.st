testing
isDirty
	^ self workingCopy ifNil: [ false ] ifNotNil: #needsSaving