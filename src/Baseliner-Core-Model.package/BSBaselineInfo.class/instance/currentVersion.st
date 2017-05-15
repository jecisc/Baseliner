accessing
currentVersion
	"Return the currentVersion of the configuration ... nil if not loaded."

	currentVersion ifNotNil: [ :cv | ^ cv ].
	self flag: #TODO.	"I do not like this recalculate thing. check later where this is used and use another system."
	"	(currentVersion notNil and: [ currentVersion ~~ #recalculate ])
		ifTrue: [ ^ currentVersion ]."
	self flag: #TODO.	"Check why this is here and if it is needed. If this is needed to reset some cache I would prefere a #resetCaches method."
	"packages := projects := groups := text := nil."
	currentVersion := self project currentVersion ifNil: [ BSNotLoadedVersion new ].
	self flag: #TODO.	"For now I do not manage announcements."
	"self root announcer announce: (MBConfigurationInfoChanged changed: self)."
	^ currentVersion