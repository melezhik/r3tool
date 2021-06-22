#!raku

my $i = config()<issue>;
my $tags = config()<tags>.perl;

my $header = "#!raku";

$header ~= qq[

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/$i]";
say "==================================================";
] if $i ~~ /^^ \d+ $$/;

say "building [.tomty/$i.pl6]";

".tomty/$i.pl6".IO.spurt(qq[
$header

=begin tomty
%(
  tag => $tags
);
=end tomty

task-run "$i";

]);



