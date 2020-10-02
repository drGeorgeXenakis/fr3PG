AllocateBiomass <-
function(state, site, parms){
    # state: vector with state variables
    # site: vector with site variables
    # parms: vector with parameters of 3-PG model
    # Root biomass proportion (pR)
    m0 <- parms[["m0"]]  # Value of 'm' when FR = 0
    pRx <- parms[["pRx"]]  # Maximum fraction of NPP to roots
    pRn <- parms[["pRn"]]  # Minimum fraction of NPP to roots
    FR <- site[["FR"]]  # Fertility rating
    PhysMod <- state[["PhysMod"]]  # Physiological modifier
    m <- m0 + (1 - m0) * FR
    pR <- pRx * pRn / (pRn + (pRx - pRn) * m * PhysMod)
    # Ratio foliage - stem biomass proportion (pFS)
    pFS2 <- parms[["pFS2"]]  # Foliage:stem partitioning ratio at diameter = 2 cm
    pFS20 <- parms[["pFS20"]]  # Foliage:stem partitioning ratio at diameter = 20 cm
    pfsPower <- log(pFS20 / pFS2) / log(10)   # Constant in pFS - dg relationship
    pfsConst <- pFS2 / (2 ^ pfsPower)  # Power in pFS - dg relationship
    dg <- state[["dg"]]
    pFS <- pfsConst * dg ^ pfsPower  
    # Stem biomass proportion (pS)
    pS <- (1 - pR) / (pFS + 1)
    # Foliage biomass proportion (pF)
    pF <- 1 - pR - pS
    # Biomass growth
    NPP <- state[["NPP"]]  # Net Primary Production (tDM / ha)
    difWl <- NPP * pF
    difWr <- NPP * pR
    difWsbr <- NPP * pS
    # Litterfall
    gammaFx <- parms[["gammaFx"]]  # Maximum litterfall rate (1 / month)
    gammaF0 <- parms[["gammaF0"]]  # Litterfall rate at t = 0 (1 / month)
    tgammaF <- parms[["tgammaF"]]  # Age at which litterfall rate has median value (years)
    t <- state[["t"]]  # Stand age (years)
    Wl <- state[["Wl"]]  # Foliage biomass (tDM / ha)
    Littfall <- gammaFx * gammaF0 / (gammaF0 + (gammaFx - gammaF0) * exp(-12 * log(1 + gammaFx / gammaF0) * t / tgammaF))
    difLitter <- Littfall * Wl
    state[["Wlitt"]] <- state[["Wlitt"]] + difLitter
    # Root turnover
    Wr <- state[["Wr"]]  # Root biomass (tDM / ha)
    Rttover <- parms[["Rttover"]]  # Average monthly root turnover rate (1 / month)
    difRoots <- Rttover * Wr
    # Update biomass estimates
    TotalLitter <- state[["Wlitt"]]  # Litter biomass (tDM / ha)
    Wsbr <- state[["Wsbr"]]  # Stem and brances biomass (tDM / ha)
    state[["Wl"]] <- Wl + difWl - difLitter
    state[["Wr"]] <- Wr + difWr - difRoots
    state[["Wsbr"]] <- Wsbr + difWsbr
    TotalLitter <- TotalLitter + difLitter
    # Add to previous state vector
    state[c("pR", "pFS", "pS", "pF", "difWl", "difWr", "difWsbr", "Littfall", "difLitter", "difRoots", "TotalLitter")] <- c(pR, pFS, pS, pF, difWl, difWr, difWsbr, Littfall, difLitter, difRoots, TotalLitter)
    return(state)
}
