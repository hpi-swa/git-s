toolbuilder
buildSettingsButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationStarter;
		action: #settingsMenu;
		label: 'Settings';
		style: #menuButton;
		horizontalResizing: #shrinkWrap;
		yourself