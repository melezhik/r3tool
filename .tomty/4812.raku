
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4812]";
say "==================================================";


=begin tomty
%(
  tag => $["pod", "open", "clarify"]
);
=end tomty

task-run "4812";

