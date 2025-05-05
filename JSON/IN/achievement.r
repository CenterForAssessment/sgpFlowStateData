###################################################################
### Script to export SGPstateData achievement data for IN to JSON
###################################################################

cat(jsonlite::toJSON(SGP::SGPstateData$IN$Achievement, pretty=TRUE), file="achievement.json")