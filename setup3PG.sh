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
        
