
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/5668]";
say "==================================================";


=begin tomty
%(
  tag => $["rejected"]
);
=end tomty

task-run "5668";
