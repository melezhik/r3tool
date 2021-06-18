set -x
set -e

$RAKUBIN -e 'sub infix:<ab>($a, $b) is assoc<chain> { True }; say 1 !ab 2';

