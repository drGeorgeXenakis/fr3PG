options(keep.source=F)

source('original_scripts/allocateBiomass.r')
dump(ls(all=TRUE),file='tidy_scripts/allocateBiomass.r')
rm(list=ls())

source('original_scripts/calculateModifiers.r')
dump(ls(all=TRUE),file='tidy_scripts/calculateModifiers.r')
rm(list=ls())

source('original_scripts/createNewPlantation.r')
dump(ls(all=TRUE),file='tidy_scripts/createNewPlantation.r')
rm(list=ls())

source('original_scripts/createNewSprouts.r')
dump(ls(all=TRUE),file='tidy_scripts/createNewSprouts.r')
rm(list=ls())

source('original_scripts/doThinning.r')
dump(ls(all=TRUE),file='tidy_scripts/doThinning.r')
rm(list=ls())

source('original_scripts/estimateAPAR.r')
dump(ls(all=TRUE),file='tidy_scripts/estimateAPAR.r')
rm(list=ls())

source('original_scripts/estimateG.3PG.r')
dump(ls(all=TRUE),file='tidy_scripts/estimateG.3PG.r')
rm(list=ls())

source('original_scripts/estimateH.3PG.r')
dump(ls(all=TRUE),file='tidy_scripts/estimateH.3PG.r')
rm(list=ls())

source('original_scripts/estimateMortality.r')
dump(ls(all=TRUE),file='tidy_scripts/estimateMortality.r')
rm(list=ls())

source('original_scripts/estimateNPP.r')
dump(ls(all=TRUE),file='tidy_scripts/estimateNPP.r')
rm(list=ls())

source('original_scripts/estimateV.3PG.r')
dump(ls(all=TRUE),file='tidy_scripts/estimateV.3PG.r')
rm(list=ls())

source('original_scripts/getDayLength.r')
dump(ls(all=TRUE),file='tidy_scripts/getDayLength.r')
rm(list=ls())

source('original_scripts/initializeState.r')
dump(ls(all=TRUE),file='tidy_scripts/initializeState.r')
rm(list=ls())

source('original_scripts/obtainDg.r')
dump(ls(all=TRUE),file='tidy_scripts/obtainDg.r')
rm(list=ls())

source('original_scripts/predictVariablesInterest.r')
dump(ls(all=TRUE),file='tidy_scripts/predictVariablesInterest.r')
rm(list=ls())

source('original_scripts/predictWeatherVariables.r')
dump(ls(all=TRUE),file='tidy_scripts/predictWeatherVariables.r')
rm(list=ls())

source('original_scripts/removeSprouts.r')
dump(ls(all=TRUE),file='tidy_scripts/removeSprouts.r')
rm(list=ls())

source('original_scripts/run3PG.r')
dump(ls(all=TRUE),file='tidy_scripts/run3PG.r')
rm(list=ls())

source('original_scripts/threePG_wrapper.r')
dump(ls(all=TRUE),file='tidy_scripts/threePG_wrapper.r')
rm(list=ls())

source('original_scripts/updateASW.r')
dump(ls(all=TRUE),file='tidy_scripts/updateASW.r')
rm(list=ls())


## Script to build the 3PGR package
package.skeleton(name="threePG",code_files=c("./tidy_scripts/allocateBiomass.r",
                                          "tidy_scripts/calculateModifiers.r",
                                          "tidy_scripts/createNewPlantation.r",
                                          "tidy_scripts/createNewSprouts.r",
                                          "tidy_scripts/doThinning.r",
                                          "tidy_scripts/estimateAPAR.r",
                                          "tidy_scripts/estimateG.3PG.r",
                                          "tidy_scripts/estimateH.3PG.r",
                                          "tidy_scripts/estimateMortality.r",
                                          "tidy_scripts/estimateNPP.r",
                                          "tidy_scripts/estimateV.3PG.r",
                                          "tidy_scripts/getDayLength.r",
                                          "tidy_scripts/initializeState.r",
                                          "tidy_scripts/obtainDg.r",
                                          "tidy_scripts/predictVariablesInterest.r",
                                          "tidy_scripts/predictWeatherVariables.r",
                                          "tidy_scripts/removeSprouts.r",
                                          "tidy_scripts/run3PG.r",
                                          "tidy_scripts/threePG_wrapper.r",
                                          "tidy_scripts/updateASW.r"
                                          ),
                 force=T)













