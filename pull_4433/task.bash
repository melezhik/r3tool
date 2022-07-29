
$RAKUBIN -v

cat << 'HERE' > $cache_dir/test1.pod
=for pod
=for nested
=for para :nested(1)
E<alpha;beta>E<alpha;beta;gamma>
♥♥♥
HERE

echo "ex1"
echo "==="
$RAKUBIN --doc=Text $cache_dir/test1.pod
echo "==="

cat << 'HERE' > $cache_dir/test2.pod
=begin nested
A
=begin nested
B
=begin nested
C
=begin nested
D
=end nested
=end nested
=end nested
=end nested
HERE


echo "ex2"
echo "==="
$RAKUBIN --doc=Text $cache_dir/test2.pod
echo "==="

