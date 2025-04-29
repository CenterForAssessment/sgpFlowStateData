#########################################################################
### Create CSEM interpolation functions for IN data
#########################################################################

require(SGP)
require(sgpFlow)

### Load CSEM data
#IN_CSEM_Lookup <- Indiana_Data_LONG_2024[, list(CONTENT_AREA=CONTENT_AREA[1], GRADE=GRADE[1], SCALE_SCORE=SCALE_SCORE[1], SCALE_SCORE_CSEM=mean(SCALE_SCORE_CSEM, na.rm=TRUE)), keyby=c("CONTENT_AREA", "GRADE", "SCALE_SCORE")][!is.na(SCALE_SCORE)]
load("IN_CSEM_Lookup.Rdata")
sgpFlow:::createCSEMInterpolationFunctions(IN_CSEM_Lookup)