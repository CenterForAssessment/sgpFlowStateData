##################################################################################################
####
#### File to produce sgpFlowStateData containing state meta-data for sgpFlow analyses
#### Source data comes from JSON files located in JSON/STATE_NAME/...
####
###################################################################################################

sgpFlowStateData <- new.env()

###  Load required packages
require(jsonlite)

#########################################################
### DEMO
#########################################################
load("CSEM/DEMO/csemInterpolationFunctions.Rdata")

sgpFlowStateData[["DEMO"]][["Achievement"]] <- fromJSON("JSON/DEMO/achievement.json")
sgpFlowStateData[["DEMO"]][["Achievement"]][["CSEM"]] <- csemInterpolationFunctions


#########################################################
### INDIANA
#########################################################
load("CSEM/IN/csemInterpolationFunctions.Rdata")

sgpFlowStateData[["IN"]][["Achievement"]] <- fromJSON("JSON/IN/achievement.json")
sgpFlowStateData[["IN"]][["Achievement"]][["CSEM"]] <- csemInterpolationFunctions




######################################################
###    Create 'digest' stamp and save the result
######################################################
sgpFlowStateData[["digest"]] <- NULL
sgpFlowStateData[["digest"]] <- digest::digest(sgpFlowStateData)

save(sgpFlowStateData, file="sgpFlowStateData.rda", compress="xz")