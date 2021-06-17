
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/rakudo-version-banner-bug]";
say "==================================================
";

=begin tomty
%(
  tag => $["open", "cli"]
);
=end tomty

task-run "rakudo-version-banner-bug";

