#########################################################################
### Create CSEM interpolation functions for DEMO data
#########################################################################

require(SGP)
require(sgpFlow)

DEMO_CSEM_Lookup <- SGPstateData[['DEMO']][['Assessment_Program_Information']][['CSEM']]
sgpFlow:::createCSEMInterpolationFunctions(DEMO_CSEM_Lookup)
