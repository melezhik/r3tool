cat $root_dir/task.bash

$RAKUBIN -v
echo
echo "=================="
echo

echo "test1"
$RAKUBIN -e "Date.new('2022-02-12').later(:5hours)" 2>&1
echo "end"

echo "test2"
$RAKUBIN -e "Date.new('2022-02-12').later(:5minutes)" 2>&1
echo "end"

echo "test3"
$RAKUBIN -e "Date.new('2022-02-12').later(:5seconds)" 2>&1
echo "end"
