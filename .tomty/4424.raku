
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4424]";
say "==================================================
";

=begin tomty
%(
  tag => $["fresh", "warnings"]
);
=end tomty

task-run "4424";

