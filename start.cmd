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
        printf "[ ERROR ] - Source me instead! -> $ . ./start.cmd\n"
        exit 1
fi

if [ ! -d "./venv" ]; then
        python3 -m venv venv
fi

. ./venv/bin/activate
################################################################################
# Unix Main Codes                                                              #
################################################################################
return




:WINDOWS
::##############################################################################
:: Windows Main Codes                                                          #
::##############################################################################
python3 -m venv venv
venv\Scripts\activate
::##############################################################################
:: Windows Main Codes                                                          #
::##############################################################################
EXIT /B
