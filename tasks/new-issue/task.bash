#!bash

set -e

issue=$(config issue)

set -x

mkdir -p $issue

cat << 'CODE' > $issue/task.bash
set -e

cat $root_dir/task.bash

$RAKUBIN -v

cat << 'HERE' > $cache_dir/code.raku

# broken code here

HERE

$RAKUBIN $cache_dir/code.raku

CODE

git add $issue

git add .tomty/$issue.raku

