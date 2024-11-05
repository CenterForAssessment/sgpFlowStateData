#########################################################################
### Create CSEM interpolation functions for DEMO data
#########################################################################

require(SGP)
require(data.table)
require(sgpFlow)

csemInterpolationFunctions <- list()

setkey(SGPstateData[['DEMO']][['Assessment_Program_Information']][['CSEM']], CONTENT_AREA, GRADE, SCALE_SCORE)

for (content_area.iter in unique(SGPstateData[['DEMO']][['Assessment_Program_Information']][['CSEM']][['CONTENT_AREA']])) {
    for (grade.iter in unique(SGPstateData[['DEMO']][['Assessment_Program_Information']][['CSEM']][['GRADE']])) {
        tmp.approx.fun.data <- SGPstateData[['DEMO']][['Assessment_Program_Information']][['CSEM']][.(content_area.iter, grade.iter)]
        csemInterpolationFunctions[[content_area.iter]][[paste("GRADE", grade.iter, sep="_")]] <- approxfun(tmp.approx.fun.data[['SCALE_SCORE']], tmp.approx.fun.data[['SCALE_SCORE_CSEM']])
    }
}

save(csemInterpolationFunctions, file="csemInterpolationFunctions.Rdata")
