rendering
renderTitleFieldOn: 	html 
	
	html div
		class: 'form-group';
		with:[
			html label
				with: 'Titel'.
			html textInput
				attributeAt: 'type' put: 'text';
				class: 'form-control';
				placeholder: 'Bitte Titel eingeben';
				on: #title of: self topic.
		].