#!bash

set -e

issue=$(config issue)

set -x

mkdir -p $issue

echo 'cat $root_dir/task.bash'  > $issue/task.bash
echo 'raku -e "# some code to brake" ' >> $issue/task.bash