#!bash

set -e

cat $root_dir/task.bash

$RAKUBIN -e 'my @a[1]; my @b[1]; @a = @b; dd @a' 2>&1

