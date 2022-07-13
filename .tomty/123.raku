
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/123]";
say "==================================================
";

=begin tomty
%(
  tag => $["example"]
);
=end tomty

task-run "123";

