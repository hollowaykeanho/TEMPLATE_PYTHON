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
pip install -r src/requirements.txt
################################################################################
# Unix Main Codes                                                              #
################################################################################
return




:WINDOWS
::##############################################################################
:: Windows Main Codes                                                          #
::##############################################################################
start.cmd
pip install -r src/requirements.txt
::##############################################################################
:: Windows Main Codes                                                          #
::##############################################################################
EXIT /B
