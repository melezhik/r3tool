
cd $cache_root_dir

mkdir t

echo 'multi MAIN() is export { say "BUG!" }' >t/BugTest.rakumod

chmod 500 t

stat t

$RAKUBIN -v

echo ===========================

$RAKUBIN -c -It -MBugTest -e ''

echo ===========================


