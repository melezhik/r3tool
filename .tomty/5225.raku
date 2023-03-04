
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/5225]";
say "==================================================";


=begin tomty
%(
  tag => $["closed"]
);
=end tomty

task-run "5225";

