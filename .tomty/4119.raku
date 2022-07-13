
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4119]";
say "==================================================
";

=begin tomty
%(
  tag => $["open"]
);
=end tomty

task-run "4119";

