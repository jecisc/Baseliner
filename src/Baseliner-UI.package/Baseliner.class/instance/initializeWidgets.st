initialization
initializeWidgets
	baselines := (self instantiate: FastTableModel)
		displayBlock: #asString;
		handlesDoubleClick: true;
		on: PharoShortcuts current browseShortcut
			do: [ baselines selectedItem ifNotNil: [ :selection | selection configurationClass browse ] ];
		doubleClickAction: [ baselines selectedItem ifNotNil: [ :selection | self browseConfiguration: selection ] ];
		yourself
	"icons: [ :configuration | self iconForConfiguration: configuration ];"

	"toolbar := self instantiate: VersionnerToolBar."