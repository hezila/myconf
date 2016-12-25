# Check installed RAM, disable VM if 8Gb or more.
# On sierra I get nvram: Error setting variable - 'boot-args': (iokit/common) general error unless disabling system integrity protection first, then it works
mem_inst=`/usr/sbin/sysctl -n hw.memsize`

action="unload"
if [ -z "$1" ]; then
    $action=$1
fi

if [ "$mem_inst" -ge "8589934592" ]; then
    echo "8Gb+ Memory installed."
        if [ "$action" == "unload" ]; then
            sudo nvram boot-args="vm_compressor=2"
            sudo pmset -a hibernatemode 0
            echo "vm.compressor_mode set to 2"
        else
            sudo nvram boot-args="vm_compressor=4"
            sudo pmset -a hibernatemode 3
            echo "vm.compressor_mode reset to defaults"
        fi
            echo $action
            launchctl $action /System/Library/LaunchDaemons/com.apple.dynamic_pager.plist

    else
    echo "Less than 8Gb memory."
fi
