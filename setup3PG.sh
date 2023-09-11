#!/bin/bash

case "$1" in 
    install)
        echo "Installing fr3PG"
        package=`ls *.tar*`
        ## Command to install fr3PG package
        R --vanilla CMD INSTALL $package
        ;;
    remove)
        echo "Removing fr3PG"
        ## Command for removing fr3PG package
        R --vanilla CMD REMOVE fr3PG
        ;;
    *)
        echo "Usage ./install_remove.sh {install|remove}"
        exit 1
        ;;
esac

exit 0
    

###!/bin/bash
##R --vanilla CMD build fr3PG
##cp -r fr3PG/* ../fr3PG

###!/bin/bash
##rm -rf fr3PG
##rm -rf fr3PG.Rcheck
##rm *tar.gz
##R --vanilla --no-save < package_skeleton.r
##cp documentation/*.Rd fr3PG/man/
##cp documentation/DESCRIPTION fr3PG/
##cp documentation/NAMESPACE fr3PG/
##find . -iname \*delete\* -exec rm {} \;
