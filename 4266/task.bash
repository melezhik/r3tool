#!bash

set -e


echo "<<<"
$RAKUBIN -MTest -e 'subtest "foo", { ok 1 }; done-testing'
echo ">>>"
