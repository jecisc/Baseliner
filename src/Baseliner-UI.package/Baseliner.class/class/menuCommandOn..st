world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #Baseliner)
		order: 0.21;
		parent: #Tools;
		label: 'Baseliner';
		iconName: #databaseIcon;
		action: [ self open ]