set -x
set -e

$RAKUBIN -e 'dd Int => *.Int; dd (Int) => *.Int;' 2>&1
