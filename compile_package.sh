#!/bin/bash

rm -rf fr3PG
rm -rf fr3PG.Rcheck
rm *tar.gz

R --vanilla --no-save < package_skeleton.r
cp documentation/*.Rd fr3PG/man/
cp documentation/DESCRIPTION fr3PG/
cp documentation/NAMESPACE fr3PG/
# mkdir -p fr3PG/data
# cp data/fluxes.rda fr3PG/data/
# cp data/spectra.rda fr3PG/data/
# cp data/harwood.csv fr3PG/data/
find . -iname \*delete\* -exec rm {} \;
