AllocateBiomass <-
function (state, site, parms) 
{
    m0 <- parms[["m0"]]
    pRx <- parms[["pRx"]]
    pRn <- parms[["pRn"]]
    FR <- site[["FR"]]
    PhysMod <- state[["PhysMod"]]
    m <- m0 + (1 - m0) * FR
    pR <- pRx * pRn/(pRn + (pRx - pRn) * m * PhysMod)
    pFS2 <- parms[["pFS2"]]
    pFS20 <- parms[["pFS20"]]
    pfsPower <- log(pFS20/pFS2)/log(10)
    pfsConst <- pFS2/(2^pfsPower)
    dg <- state[["dg"]]
    pFS <- pfsConst * dg^pfsPower
    pS <- (1 - pR)/(pFS + 1)
    pF <- 1 - pR - pS
    NPP <- state[["NPP"]]
    difWl <- NPP * pF
    difWr <- NPP * pR
    difWsbr <- NPP * pS
    gammaFx <- parms[["gammaFx"]]
    gammaF0 <- parms[["gammaF0"]]
    tgammaF <- parms[["tgammaF"]]
    t <- state[["t"]]
    Wl <- state[["Wl"]]
    Littfall <- gammaFx * gammaF0/(gammaF0 + (gammaFx - gammaF0) * 
        exp(-12 * log(1 + gammaFx/gammaF0) * t/tgammaF))
    difLitter <- Littfall * Wl
    state[["Wlitt"]] <- state[["Wlitt"]] + difLitter
    Wr <- state[["Wr"]]
    Rttover <- parms[["Rttover"]]
    difRoots <- Rttover * Wr
    TotalLitter <- state[["Wlitt"]]
    Wsbr <- state[["Wsbr"]]
    state[["Wl"]] <- Wl + difWl - difLitter
    state[["Wr"]] <- Wr + difWr - difRoots
    state[["Wsbr"]] <- Wsbr + difWsbr
    TotalLitter <- TotalLitter + difLitter
    state[c("pR", "pFS", "pS", "pF", "difWl", "difWr", "difWsbr", 
        "Littfall", "difLitter", "difRoots", "TotalLitter")] <- c(pR, 
        pFS, pS, pF, difWl, difWr, difWsbr, Littfall, difLitter, 
        difRoots, TotalLitter)
    return(state)
}
