## Set working directory
setwd("~/Documents/GitHub/fr3PG")

## Load the 3PG package
devtools::load_all(".")

## Read climate data
clm.har <- read_csv(file="./data/clm_harwood.csv")

## Get the default parameter list
default <- list(
  clm.har,
  ## presc,
  ##   Stand initalisation
  t = 0,
  N = 1200,
  Wl = 0,
  WlDormant = 0, 
  Wr = 0,
  Wsbr = 0,
  Wlitt = 0,
  rotation = 1,
  cycle = 1,
  rm.sprouts = F,
  nyears = 100,
  ## Site information
  latitude = 39,
  FR = 0.5,
  soilclass = 0,
  ASW = 100,
  MaxASW = 200,
  MinASW = 0,
  CO2 = 400,
  ## Parameters
  pFS2=0.3,                      
  pFS20=0.09,
  aS=0.056,
  nS=2.7,
  pRx=0.5,
  pRn=0.25,
  Tmin=6,
  Topt=16,
  Tmax=40,
  kF=1,
  SWconst0=0.7,
  SWpower0=9,
  m0=0,
  fN0=1,
  fNn=0,
  MaxAge=50,
  nAge=4,
  rAge=0.95,
  gammaFx=0.013,
  gammaF0=0.001,
  tgammaF=6,
  Rttover=0.01,
  MaxCond=0.02,
  LAIgcx=3.33,
  BLcond=0.2,
  wSx1000=300,
  thinPower=1.5,
  mF=0,
  mR=0.2,
  mS=0.2,
  SLA0=11,
  SLA1=4,
  tSLA=2.5,
  k=0.5,
  fullCanAge=3,
  MaxIntcptn=0.15,
  LAImaxIntcptn=0,
  alpha=0.055,
  Y=0.47,
  poolFractn=0,
  e20=2.2,
  rhoAir=1.2,
  lambda=2460000,
  VPDconv=0.000622,
  fracBB0=0.75,
  fracBB1=0.15,
  tBB=2,
  rhoMin=0.45,
  rhoMax=0.45,
  tRho=4,
  Qa=-90,
  Qb=0.8,
  gDM_mol=24,
  molPAR_MJ=2.3,
  CoeffCond=0.05,
  fCalpha700=1.4,
  fCg700=0.7,
  fCalphax=2.33333333333333,
  fCg0=1.75,
  MinCond=0,
  Wl.s=0.526,
  Wsbr.s=0.2035,
  Wr.s=0.22775,
  pWl.sprouts=0.5,
  pWsbr.sprouts=0.9,
  leaf.grow = 0, ## Tom Locatelli
  leaf.fall = 0, ## Tom Locatelli
  cod.pred = "3PG",
  cod.clim = "Average"
)


output<-do.call(fr3PG,default)


output%>%
  # filter(t.proj>=40&t.proj<=45)%>%
  ggplot(data=.)+
  geom_point(aes(t.proj,LAI))+
  geom_line(aes(t.proj,LAI))
