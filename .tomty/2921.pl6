
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/2921]";
say "==================================================";


=begin tomty
%(
  tag => $["lta", "closed", "rc_2021_07"]
);
=end tomty

task-run "2921";

