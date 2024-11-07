#########################################################################
### Create CSEM interpolation functions for DEMO data
#########################################################################

require(SGP)
require(sgpFlow)


tmp.csem.data <- SGPstateData[['DEMO']][['Assessment_Program_Information']][['CSEM']]
createCSEMInterpolationFunctions(tmp.csem.data)
