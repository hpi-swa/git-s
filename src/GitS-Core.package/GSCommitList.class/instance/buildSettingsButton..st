toolbuilder
buildSettingsButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationLifecycle;
		action: #settingsMenu;
		label: 'Settings';
		style: #menuButton;
		horizontalResizing: #shrinkWrap;
		yourself