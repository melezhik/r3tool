#!bash

set -e


$RAKUBIN -e 'my @a[1]; my @b[1]; @a = @b; dd @a' 2>&1

