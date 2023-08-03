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

. ./start.cmd
python -m unittest discover -s src/ -p '*_test.py'
################################################################################
# Unix Main Codes                                                              #
################################################################################
return




:WINDOWS
::##############################################################################
:: Windows Main Codes                                                          #
::##############################################################################
start.cmd
python -m unittest discover -s src/ -p '*_test.py'
::##############################################################################
:: Windows Main Codes                                                          #
::##############################################################################
EXIT /B
