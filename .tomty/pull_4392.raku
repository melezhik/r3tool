
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/pull/4392]";
say "==================================================";

=begin tomty
%(
  tag => $["pr", "closed","unicode", "rc_2021_07", "fr"]
);
=end tomty

task-run "pull_4392";

