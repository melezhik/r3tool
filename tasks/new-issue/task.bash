#!bash

set -e

issue=$(config issue)

set -x

mkdir -p $issue

touch $issue/task.check

cat << 'CODE' > $issue/task.bash
set -e

$RAKUBIN -v

cat  << 'HERE' | $RAKUBIN --repl-mode=interactive

# broken code here

HERE

CODE

git add $issue

git add .tomty/$issue.raku

