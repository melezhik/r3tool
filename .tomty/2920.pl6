
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/2920]";
say "==================================================
";

=begin tomty
%(
  tag => $["closed"]
);
=end tomty

task-run "2920";

