#!bash

set -e

cat $root_dir/task.bash

echo "<<<"
$RAKUBIN -MTest -e 'subtest "foo", { ok 1 }; done-testing'
echo ">>>"
