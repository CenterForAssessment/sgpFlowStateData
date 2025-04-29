############################################################
### Script to export knots, boundaries, loss/hoss to JSON
############################################################

cat(jsonlite::toJSON(SGP::SGPstateData$DEMO$Achievement$Knots_Boundaries, pretty=TRUE), file="knots_boundaries_loss_hoss.json")
