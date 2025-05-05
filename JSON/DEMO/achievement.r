#####################################################################
### Script to export SGPstateData achievement data for DEMO to JSON
#####################################################################

cat(jsonlite::toJSON(SGP::SGPstateData$DEMO$Achievement, pretty=TRUE), file="achievement.json")
