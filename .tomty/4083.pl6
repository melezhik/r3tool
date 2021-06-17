
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4083]";
say "==================================================
";

=begin tomty
%(
  tag => $["closed"]
);
=end tomty

task-run "4083";

