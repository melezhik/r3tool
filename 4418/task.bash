
$RAKUBIN -v

cat << 'HERE' | $RAKUBIN - 2>&1 
use Digest::MD5:from<Perl5>; 
my $d = Digest::MD5.new;
$d.add('foo'.encode('UTF-8'));
say "[", $d.hexdigest, "]";
HERE
