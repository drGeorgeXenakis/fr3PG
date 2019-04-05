#!/bin/bash

rm -rf threePG
rm -rf threePG.Rcheck
rm *tar.gz

R --vanilla --no-save < package_skeleton.r
cp documentation/*.Rd threePG/man/
cp documentation/DESCRIPTION threePG/
cp documentation/NAMESPACE threePG/
# mkdir -p threePG/data
# cp data/fluxes.rda threePG/data/
# cp data/spectra.rda threePG/data/
# cp data/harwood.csv threePG/data/
find . -iname \*delete\* -exec rm {} \;
