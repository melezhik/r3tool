#!raku

my $i = task_var("i");
my $tags = config()<issues>{$i}<tag>.perl;

say "building [.tomty/$i.pl6]";

".tomty/$i.pl6".IO.spurt(qq[
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/$i]";
say "==================================================\n";

=begin tomty
%(
  tag => $tags
);
=end tomty

task-run "$i";

]);



