#user "test123";

my $sha = %*ENV<sha>;

module-run 'Rakudo::Install', %(
  user => %*ENV<USER>,
  skip-install-dependencies => True,
  rakudo-version => $sha,
  skip-zef => True,
  patch-profile => False,
);

say "to use installed Rakudo version in r3:";
say "export RAKUBIN=/tmp/whateverable/rakudo-moar/$sha/bin/raku";
