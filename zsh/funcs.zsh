logcat() {
    app_package=$1
    shift

    if [ -z $app_package ]; then
        echo "Usage: $(basename $0) [package] ..."
        return 1
    fi

    info=$(adb $@ shell ps | awk '$NF~"'"$app_package"'" {print $2, $NF}')
    if [ -z $info ]; then
        echo >&2 "Error: app $app_package not running"
        return 1
    fi

    echo '----------------------------------------------------------------------'
    echo $info
    echo '----------------------------------------------------------------------'
    pids=$(echo $info | awk '{print $1}')
    pattern=""
    while read -r pid; do
        pattern="$pattern\|([[:space:]]*$pid)"
    done <<< $pids
    pattern=$(echo $pattern | cut -c 3-)
    exec adb $@ logcat | grep -e $pattern --color=never
}

# hex to decimal and vise versa
h2d() {
    echo "ibase=16; $@" | bc
}
d2h() {
    echo "obase=16; $@" | bc
}
