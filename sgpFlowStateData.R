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

sgpFlowStateData[["DEMO"]][["Achievement"]][["Knots_Boundaries"]] <- fromJSON("JSON/DEMO/knots_boundaries_loss_hoss.json")
sgpFlowStateData[["DEMO"]][["Achievement"]][["CSEM"]] <- csemInterpolationFunctions







######################################################
###    Create 'digest' stamp and save the result
######################################################
sgpFlowStateData[["digest"]] <- NULL
sgpFlowStateData[["digest"]] <- digest::digest(sgpFlowStateData)

save(sgpFlowStateData, file="sgpFlowStateData.rda", compress="xz")