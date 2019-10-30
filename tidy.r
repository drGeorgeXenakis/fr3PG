options(keep.source=F)

source('original_scripts/cleanFluxes.r')
dump(ls(all=TRUE),file='tidy_scripts/cleanFluxes.r')
rm(list=ls())

source('original_scripts/footprint.r')
dump(ls(all=TRUE),file='tidy_scripts/footprint.r')
rm(list=ls())

source('original_scripts/functions.r')
dump(ls(all=TRUE),file='tidy_scripts/functions.r')
rm(list=ls())

source('original_scripts/lue_model.r')
dump(ls(all=TRUE),file='tidy_scripts/lue_model.r')
rm(list=ls())

source('original_scripts/plotting.r')
dump(ls(all=TRUE),file='tidy_scripts/plotting.r')
rm(list=ls())

source('original_scripts/ustar_threshold.r')
dump(ls(all=TRUE),file='tidy_scripts/ustar_threshold.r')
rm(list=ls())

