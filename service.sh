#!/system/bin/sh
MODDIR=${0%/*}

umask 022

# Create the empty directory and set no permissions
EMPTY_DIR=$MODDIR/empty
mkdir -p $EMPTY_DIR
chmod 000 $EMPTY_DIR

# Disable and kill the app
pm disable com.verizon.mips.services
killall com.verizon.mips.services

# Bind/mount the empty directory over the apk parent directory
mount --bind $EMPTY_DIR /system_ext/priv-app/MyVerizonServices

# Kill the app process again in case it restarted
killall com.verizon.mips.services

# Same thing for Verizon's LLKAgent.apk
pm disable com.verizon.llkagent
killall com.verizon.llkagent
mount --bind $EMPTY_DIR /system_ext/priv-app/LLKAgent
killall com.verizon.llkagent

exit 0
