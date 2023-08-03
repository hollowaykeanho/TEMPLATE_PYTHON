echo >/dev/null # >nul & GOTO WINDOWS & rem ^
# LICENSE CLAUSES HERE
# --------------------
# Leave the echo instruction above as first line as it is the trigger for
# jumping for Windows OS.
#
################################################################################
# Unix Main Codes                                                              #
################################################################################
if [ "$BASH_SOURCE" == "$(command -v $0)" ]; then
        printf "[ ERROR ] - Source me instead! -> $ . ./setup.cmd\n"
        exit 1
fi

. ./start.cmd

if [ "$(type -p pyinstaller)" == "" ]; then
        printf "[ ERROR ] - missing pyinstaller. Source setup.cmd first. -> $ . ./setup.cmd\n"
        exit 1
fi


os="$(uname)"
os="${os,,}"
case "$os" in
        windows*|ms-dos*)
                os='windows'
                ;;
        cygwin*|mingw*|mingw32*|msys*)
                os='windows'
                ;;
        *freebsd)
                os='freebsd'
                ;;
        dragonfly*)
                os='dragonfly'
                ;;
        *)
                ;;
esac


arch="$(uname -m)"
arch="${arch,,}"
case "$arch" in
        i686-64)
                arch='ia64'
                ;;
        i386|i486|i586|i686)
                arch='i386'
                ;;
        x86_64)
                arch='amd64'
                ;;
        sun4u)
                arch='sparc'
                ;;
        "power macintosh")
                arch='powerpc'
                ;;
        ip*)
                arch='mips'
                ;;
        *)
                ;;
esac


read -rd '' name <src/NAME || :
name="${name:-main}_${os}-${arch}"


pyinstaller --noconfirm \
        --onefile \
        --clean \
        --distpath './bin' \
        --workpath './tmp' \
        --specpath './src' \
        --name "$name" \
        'src/main.py'
################################################################################
# Unix Main Codes                                                              #
################################################################################
return




:WINDOWS
::##############################################################################
:: Windows Main Codes                                                          #
::##############################################################################
start.cmd

pyinstaller --noconfirm ^
        --onefile ^
        --clean ^
        --distpath './bin' ^
        --workpath './tmp' ^
        --specpath './src' ^
        'src/main.py'
::##############################################################################
:: Windows Main Codes                                                          #
::##############################################################################
EXIT /B
