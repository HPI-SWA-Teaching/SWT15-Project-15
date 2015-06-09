as yet unclassified
renderTopicsOn: html

	html text: 'Themen:'.
	self mayManageTopics ifTrue: [
		html anchor
			callback: [self createNewTopic];
			with: ' New Topic'.].

	html table: [
		html tableRow: [
			html tableData: 'Name'].
		(self course topics sort: self class groupSortingBlock) do: [:topic |
			html tableRow: [
				html tableData: topic title.
				"TODO:html tableData: [
					html anchor
						callback: [self viewGroup: group];
						with: 'View']."
				html tableData: [
					self mayManageTopics ifTrue: [
						html anchor
							callback: [self course removeTopic: topic];
							with: 'Delete']]]]].