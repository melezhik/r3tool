set -e

cat $root_dir/task.bash

echo '>>>'
raku -e "{ (2, 4 ... 1_000_000).gist; say (now - ENTER now).Int }"
echo '<<<'

