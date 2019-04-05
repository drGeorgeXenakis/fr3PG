#!/bin/bash

case "$1" in 
    install)
        echo "Installing FREddyPro"
        package=`ls *.tar*`
        ## Command to install FREddyPro package
        R --vanilla CMD INSTALL $package
        ;;
    remove)
        echo "Removing FREddyPro"
        ## Command for removing FREddyPro package
        R --vanilla CMD REMOVE FREddyPro
        ;;
    *)
        echo "Usage ./install_remove.sh {install|remove}"
        exit 1
        ;;
esac

exit 0
        
