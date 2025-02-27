#!/bin/csh
setenv VPSIM_HOME `pwd`
# Unzip the busybox disk image if not already done
if (! -e "$VPSIM_HOME/GPP/disk_images/busybox.qcow2" ) then
    echo "Unzipping busybox.qcow2 disk image.."
    unzip $VPSIM_HOME/GPP/disk_images/busybox.qcow2.zip -d $VPSIM_HOME/GPP/disk_images
endif

setenv VPSIM_PATH $VPSIM_HOME/bin/vpsim
setenv PYTHONPATH $VPSIM_HOME/Python:$VPSIM_HOME/Python/Libs:$VPSIM_HOME/Python/Platforms:$VPSIM_HOME/GPP:$PYTHONPATH
