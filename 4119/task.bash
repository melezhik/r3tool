set -x
set -e

raku -e 'sub infix:<ab>($a, $b) is assoc<chain> { True }; say 1 !ab 2';

