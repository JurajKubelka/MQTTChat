gt-inspector-extension
gtInspectorItemsIn: composite
	<gtInspectorPresentationOrder: 0>
	^ composite with: [ :a |
		collection ifNotNil: [ :aCollection | 
			aCollection gtInspectorItemsIn: composite ] ]