
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/5667]";
say "==================================================";


=begin tomty
%(
  tag => $["regex", "open"]
);
=end tomty

task-run "5667";

