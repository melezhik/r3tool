#!bash

set -e

cat $root_dir/task.bash

cd $cache_dir

cat << 'EOF' > MyMod.pm
package MyMod;
our $debug = 1;
1;
EOF

cat << 'EOF' > MyMod.rakumod
unit module MyMod;
our $debug is export = 1;
EOF


$RAKUBIN -v

$RAKUBIN -I. -MMyMod -e 'say $MyMod::debug'
