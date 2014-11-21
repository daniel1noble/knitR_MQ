modelSummary  <-  function(lmModel) {
	coef(summary(lmModel))
}

rounded  <-  function(value) {
	sprintf('%.2f', round(value, 2))
}