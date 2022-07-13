
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4409]";
say "==================================================
";

=begin tomty
%(
  tag => $["open", "fresh"]
);
=end tomty

task-run "4409";

