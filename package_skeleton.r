options(keep.source=F)

source('original_scripts/AllocateBiomass.r')
dump(ls(all=TRUE),file='tidy_scripts/AllocateBiomass.r')
rm(list=ls())

source('original_scripts/CalculateModifiers.r')
dump(ls(all=TRUE),file='tidy_scripts/CalculateModifiers.r')
rm(list=ls())

source('original_scripts/CreateNewPlantation.r')
dump(ls(all=TRUE),file='tidy_scripts/CreateNewPlantation.r')
rm(list=ls())

source('original_scripts/CreateNewSprouts.r')
dump(ls(all=TRUE),file='tidy_scripts/CreateNewSprouts.r')
rm(list=ls())

source('original_scripts/DoThinning.r')
dump(ls(all=TRUE),file='tidy_scripts/DoThinning.r')
rm(list=ls())

source('original_scripts/EstimateAPAR.r')
dump(ls(all=TRUE),file='tidy_scripts/EstimateAPAR.r')
rm(list=ls())

source('original_scripts/EstimateG.3PG.r')
dump(ls(all=TRUE),file='tidy_scripts/EstimateG.3PG.r')
rm(list=ls())

source('original_scripts/EstimateH.3PG.r')
dump(ls(all=TRUE),file='tidy_scripts/EstimateH.3PG.r')
rm(list=ls())

source('original_scripts/EstimateMortality.r')
dump(ls(all=TRUE),file='tidy_scripts/EstimateMortality.r')
rm(list=ls())

source('original_scripts/EstimateNPP.r')
dump(ls(all=TRUE),file='tidy_scripts/EstimateNPP.r')
rm(list=ls())

source('original_scripts/EstimateV.3PG.r')
dump(ls(all=TRUE),file='tidy_scripts/EstimateV.3PG.r')
rm(list=ls())

source('original_scripts/GetDayLength.r')
dump(ls(all=TRUE),file='tidy_scripts/GetDayLength.r')
rm(list=ls())

source('original_scripts/InitializeState.r')
dump(ls(all=TRUE),file='tidy_scripts/InitializeState.r')
rm(list=ls())

source('original_scripts/ObtainDg.r')
dump(ls(all=TRUE),file='tidy_scripts/ObtainDg.r')
rm(list=ls())

source('original_scripts/PredictVariablesInterest.r')
dump(ls(all=TRUE),file='tidy_scripts/PredictVariablesInterest.r')
rm(list=ls())

source('original_scripts/PredictWeatherVariables.r')
dump(ls(all=TRUE),file='tidy_scripts/PredictWeatherVariables.r')
rm(list=ls())

source('original_scripts/RemoveSprouts.r')
dump(ls(all=TRUE),file='tidy_scripts/RemoveSprouts.r')
rm(list=ls())

source('original_scripts/Run3PG.r')
dump(ls(all=TRUE),file='tidy_scripts/Run3PG.r')
rm(list=ls())

source('original_scripts/fr3PG.r')
dump(ls(all=TRUE),file='tidy_scripts/fr3PG.r')
rm(list=ls())

source('original_scripts/UpdateASW.r')
dump(ls(all=TRUE),file='tidy_scripts/UpdateASW.r')
rm(list=ls())


## Script to build the 3PGR package
package.skeleton(name="fr3PG",code_files=c("./tidy_scripts/AllocateBiomass.r",
                                          "tidy_scripts/CalculateModifiers.r",
                                          "tidy_scripts/CreateNewPlantation.r",
                                          "tidy_scripts/CreateNewSprouts.r",
                                          "tidy_scripts/DoThinning.r",
                                          "tidy_scripts/EstimateAPAR.r",
                                          "tidy_scripts/EstimateG.3PG.r",
                                          "tidy_scripts/EstimateH.3PG.r",
                                          "tidy_scripts/EstimateMortality.r",
                                          "tidy_scripts/EstimateNPP.r",
                                          "tidy_scripts/EstimateV.3PG.r",
                                          "tidy_scripts/GetDayLength.r",
                                          "tidy_scripts/InitializeState.r",
                                          "tidy_scripts/ObtainDg.r",
                                          "tidy_scripts/PredictVariablesInterest.r",
                                          "tidy_scripts/PredictWeatherVariables.r",
                                          "tidy_scripts/RemoveSprouts.r",
                                          "tidy_scripts/Run3PG.r",
                                          "tidy_scripts/fr3PG.r",
                                          "tidy_scripts/UpdateASW.r"
                                          ),
                 force=T)













