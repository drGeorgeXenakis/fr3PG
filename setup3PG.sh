#!/bin/bash

case "$1" in 
    install)
        echo "Installing threePG"
        package=`ls *.tar*`
        ## Command to install threePG package
        R --vanilla CMD INSTALL $package
        ;;
    remove)
        echo "Removing threePG"
        ## Command for removing threePG package
        R --vanilla CMD REMOVE threePG
        ;;
    *)
        echo "Usage ./install_remove.sh {install|remove}"
        exit 1
        ;;
esac

exit 0
        
