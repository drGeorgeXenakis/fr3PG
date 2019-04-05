# 1.Copyright statement comment -------------------------------------------

# Copyright 2017 Manuel Arias-Rodil
# Permission is hereby granted, free of charge, to any person obtaining a copy of this script and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

# 2.Author comment --------------------------------------------------------

# Manuel Arias-Rodil and Margarida Tomé

# 3.File description comment ----------------------------------------------

# 3-PG model implementation in R, for Eucalyptus globulus in Portugal

# 4.source() and library() statements -------------------------------------
# Remove previous workspace
## rm(list = ls(all.names = T))

# 5.Function definitions --------------------------------------------------










## # 6.Execution statements --------------------------------------------------
## # 6.1. Inputs ----
## # Parameters 3-PG for Eucalyptus globulus in Portugal
## parms.df <- read.csv("./R01_Parameters3PG_EucalyptusGlobulus_Portugal.csv")

## # Create a vector with parameters
## parms <- parms.df$value
## names(parms) <- as.character(parms.df$parameter)

## # Create list with information to be included in some functions
## parms.general <- list(daysinmonth = c(Jan = 31, Feb = 28, Mar = 31, Apr = 30, May = 31, Jun = 30, Jul = 31, Aug = 31, Sep = 30, Oct = 31, Nov = 30, Dec = 31),  # Vector with number of days per month
##                       parms.soil = data.frame(soilclass.name = c("Sandy", "Sandy loam", "Clay loam", "Clay", "Non standard", "No effect of ASW"), 
##                                               soilclass = c(1, 2, 3, 4, NA, 0), 
##                                               SWconst = c(0.7, 0.6, 0.5, 0.4, parms[["SWconst0"]], 1),
##                                               SWpower = c(9, 7, 5, 3, parms[["SWpower0"]], 1))  # Table with parameters for soil water modifier, depending on the soil type
                      
## )
## # SWconst0: default moisture ratio deficit for fSW = 0.5
## # SWpower0: default power of moisture ratio deficit

## # # Initial values for variables
## # # pooledSW = 0
## # # Prescription example
## # .fma.base <- data.frame(id.fma = 1, Npl = 1500, t = c(3, 5), pNr = c(NA, 1), Nres = c(700, 0), thinWl = 1, thinWsbr = 1, thinWr = 1, nsprouts = NA, t.nsprouts = NA)
## # .nrot <- 3
## # .ncycles <- 6
## # .nsprouts <- 1.6
## # .t.nsprouts <- 2
## # presc <- list()
## # .rotation <- 1
## # for(i in 1:.ncycles){
## #     .fma.i <- .fma.base
## #     if(.rotation > 1){
## #         .fma.i[, "Npl"] <- NA
## #         .fma.i[, "nsprouts"] <- .nsprouts
## #         .fma.i[, "t.nsprouts"] <- .t.nsprouts
## #     }
## #     presc[[i]] <- cbind(.fma.i, rotation = .rotation, cycle = i)
## #     if(.rotation < .nrot) .rotation <- .rotation + 1 else .rotation <- 1
## # }
## # presc <- do.call(rbind, presc)
## # # Re-order variables
## # presc <- presc[, c("id.fma", "cycle", "rotation", "Npl", "t.nsprouts", "nsprouts", "t", "pNr", "Nres", "thinWl", "thinWr", "thinWsbr")]
## # write.csv(presc, "02_ExampleManagementPrescription.csv", row.names = F, na = "")
## # 
## # # Execute 3-PG model
## # parms.df[parms.df$parameter == "pRn", "value"] <- 0.15
## # parms.df[parms.df$parameter == "SLA0", "value"] <- 13.1
## # parms.df[parms.df$parameter == "SLA1", "value"] <- 4.2
## # parms.df[parms.df$parameter == "tSLA", "value"] <- 1.5
## # # parms.df[parms.df$parameter == "fullCanAge", "value"] <- 0
## # write.csv(parms.df, "R01_Parameters3PG_EucalyptusGlobulus_Portugal_Update.csv", row.names = F)
## # setwd("~/Documents/Congresos_Workshops_Seminarios_Presentaciones/2017/03_8CFN/01_3PG_Shiny/3PGOUTPlus")
## # 
## # vars.ini <- c(t = 6, N = 1200, Wl = 0, Wr = 0, Wsbr = 0, Wlitt = 0, rotation = 1, cycle = 1, rm.sprouts = F)
## # 
## # # 2.Site information
## # site.info <- c(latitude = 39, FR = 0.5, soilclass = 0, ASW = 100, MaxASW = 200, MinASW = 0, CO2 = 400)
## # 
## # # 3.Climate data
## # # dates <- reactive({input$dates})
## # year.ini <- 1982
## # month.ini <- 7
## # year.end <- 1988
## # month.end <- 11
## # weather <- read.csv("01_ExampleClimateData.csv")
## # pos.ini <- which(weather$Year == year.ini & weather$Month == month.ini)
## # pos.end <- which(weather$Year == year.end & weather$Month == month.end)
## # # Select the subset of weather information that will be used
## # weather.subset <- weather[pos.ini:pos.end, ]
## # 
## # # 4.FMA
## # presc <- read.csv("02_ExampleManagementPrescription.csv")
## # 
## # proj <- Run3PG(stand.init = vars.ini, weather = weather.subset, site = site.info, presc = presc, parms = parms, cod.pred = "3PG")
## # head(proj)


