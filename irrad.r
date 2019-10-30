irradiance<-function(doy,ta,rh,rn,lat,slp,asp,elev,linke){
  if(!is.loaded('irradiance')){
    dyn.load('/media/data/Thermolidar/data/irradiance.so')
}
out<-.Fortran('glob_irrad',
         doy=as.numeric(doy),
         ta=as.numeric(ta),
         rh=as.numeric(rh),
         rn=as.numeric(rn),         
         lat=as.numeric(lat),
         slp=as.numeric(slp),
         asp=as.numeric(asp),        
         elev=as.numeric(elev),
         linke=as.numeric(linke),
         ird=as.numeric(1))
  ## Return the value
  return(out$ird)
}
     


