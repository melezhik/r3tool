
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4699]";
say "==================================================";


=begin tomty
%(
  tag => $["open", "clarify", "zef", "weird"]
);
=end tomty

task-run "4699";

