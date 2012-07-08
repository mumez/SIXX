actions-parse-pull
elementsFrom: parser do: aBlock 
	self withErrorHandlerDo: [ parser whileAnyPeek: [ aBlock value: parser ] ]